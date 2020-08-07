const yaml = require("js-yaml")

module.exports = new yaml.Schema.create(
  [
    "Command",
    "Positional",
    "Flag",
    "SimpleFlagArg",
    "EmptyFlagArg",
    "OptionalFlagArg",
  ].map(
    type =>
      new yaml.Type(`!${type}`, {
        kind: "mapping",
      })
  )
)
