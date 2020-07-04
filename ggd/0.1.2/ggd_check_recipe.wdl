version 1.0

task GgdCheckRecipe {
  input {
    Boolean? debug
    Boolean? dont_uninstall
    String recipe_path
  }
  command <<<
    ggd check-recipe \
      ~{recipe_path} \
      ~{true="--debug" false="" debug} \
      ~{true="--dont_uninstall" false="" dont_uninstall}
  >>>
  parameter_meta {
    debug: "(Optional) Set the stdout log level to debug"
    dont_uninstall: "(Optional) By default the newly installed local ggd data package is uninstalled after the check has finished. To bypass this uninstall step (to keep the local package installed) set this flag \"-- dont_uninstall\""
    recipe_path: "path to recipe directory (can also be path to the .bz2)"
  }
}