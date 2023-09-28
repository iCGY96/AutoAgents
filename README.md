# AutoAgents: A Framework for Automatic Agent Generation

<p align="center">
<a href=""><img src="docs/resources/logo-autoagents.jpg" alt="autoagents logo: A Framework for Automatic Agent Generation." width="150px"></a>
</p>

<p align="center">
<b>Generate different roles for GPTs to form a collaborative entity for complex tasks.</b>
</p>

<p align="center">
<a href="README.md"><img src="https://img.shields.io/badge/document-English-blue.svg" alt="EN doc"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT"></a>
</p>

AutoAgents is an experimental open-source application for An Automatic Agents Generation Experiment based on LLM. This program, driven by LLM, autonomously generates multi-agents to achieve whatever goal you set.

<p align="center">
    <img src=./docs/resources/framework2.jpg width="800">
</p>

## Installation and Usage

### Installation

```bash
git clone [Link]
cd AutoAgents
python setup.py install
```

### Configuration

- Configure your `OPENAI_API_KEY` in any of `config/key.yaml / config/config.yaml / env`
- Priority order: `config/key.yaml > config/config.yaml > env`

```bash
# Copy the configuration file and make the necessary modifications.
cp config/config.yaml config/key.yaml
```

| Variable Name                              | config/key.yaml                           | env                                             |
| ------------------------------------------ | ----------------------------------------- | ----------------------------------------------- |
| OPENAI_API_KEY # Replace with your own key | OPENAI_API_KEY: "sk-..."                  | export OPENAI_API_KEY="sk-..."                  |
| OPENAI_API_BASE # Optional                 | OPENAI_API_BASE: "https://<YOUR_SITE>/v1" | export OPENAI_API_BASE="https://<YOUR_SITE>/v1" |

### Usage
- Commandline mode:
```python
python main.py --mode commandline --llm_api_key YOUR_OPENAI_API_KEY --serapi_key YOUR_SERPAPI_KEY --idea "Is LK-99 really a room temperature superconducting material?"
```
- Websocket service mode:
```python
python main.py --mode service --host "127.0.0.1" --port 9000
```

### Docker
- Build docker image:
```bash
IMAGE="docker/autoagents"
VERSION=1.0

docker build -f docker/Dockerfile -t "${IMAGE}:${VERSION}" .
```
- Start docker container:
```bash
docker run -it --rm -p 7860:7860 "${IMAGE}:${VERSION}"
```
- Open http://127.0.0.1:7860 in the browser.

