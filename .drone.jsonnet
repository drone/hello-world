local Hello(arch) = {
  kind: "pipeline",
  name: "hello-on-"+arch,
  platform: {
    os: "linux",
    arch: arch,
  },
  steps: [
    {
      name: "en",
      image: "alpine",
      commands: [
        "echo hello",
        "echo world",
      ]
    },
    {
      name: "es",
      image: "alpine",
      commands: [
        "echo hola",
        "echo mundo",
      ]
    },
    {
      name: "fr",
      image: "alpine",
      commands: [
        "echo bonjour",
        "echo monde",
      ]
    }
  ]
};

local Goodbye = {
  kind: "pipeline",
  name: "goodbye",
  steps: [
    {
      name: "en",
      image: "alpine",
      commands: [
        "echo goodbye",
        "echo world",
      ]
    },
    {
      name: "es",
      image: "alpine",
      commands: [
        "echo adios",
        "echo mundo",
      ]
    },
    {
      name: "fr",
      image: "alpine",
      commands: [
        "echo au revoir",
        "echo monde",
      ]
    }
  ],
  depends_on: [
    "hello-on-arm64",
    "hello-on-amd64"
  ]
};

[
  Hello("amd64"),
  Hello("arm64"),
  Goodbye
]
