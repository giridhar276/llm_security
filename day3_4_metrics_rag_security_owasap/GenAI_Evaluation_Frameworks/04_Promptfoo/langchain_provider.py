import json
from langchain_openai import ChatOpenAI

def call_api(prompt, options, context):
    llm = ChatOpenAI(model="gpt-4.1-mini", temperature=0)
    response = llm.invoke(prompt)
    return {"output": response.content}
