def main(ctx):
    return {
        "kind": "pipeline",
        "type": "docker",
        "name": "starlark",
        "steps": [
            {
                "name": "greetings",
                "image": "alpine",
                "commands": [
                    "echo hello starlark"
                ]
            }
        ]
    }
