module.exports = function ({ node }, pluginOptions) {
  return ["Command", "Positional", "Flag", "SimpleFlagArg", "EmptyFlagArg"].map(
    type => ({
      tag: `!${type}`,
      options: {
        kind: "mapping",
      },
    })
  )
}
