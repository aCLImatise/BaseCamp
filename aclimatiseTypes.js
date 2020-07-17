module.exports = function ({ node }, pluginOptions) {
  return [
    "Command",
    "Positional",
    "Flag",
    "SimpleFlagArg",
    "EmptyFlagArg",
    "OptionalFlagArg",
  ].map(type => ({
    tag: `!${type}`,
    options: {
      kind: "mapping",
    },
  }))
}
