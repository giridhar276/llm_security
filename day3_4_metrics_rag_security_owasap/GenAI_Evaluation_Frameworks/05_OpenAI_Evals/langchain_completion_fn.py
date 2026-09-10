from evals.api import CompletionFn, CompletionResult
from langchain_openai import ChatOpenAI

class LangChainResult(CompletionResult):
    def __init__(self, text):
        self.text = text
    def get_completions(self):
        return [self.text]

class LangChainCompletionFn(CompletionFn):
    def __init__(self, model="gpt-4.1-mini", **kwargs):
        self.llm = ChatOpenAI(model=model, temperature=0)
    def __call__(self, prompt, **kwargs):
        response = self.llm.invoke(str(prompt))
        return LangChainResult(response.content)
