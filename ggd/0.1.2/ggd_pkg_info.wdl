version 1.0

task GgdPkgInfo {
  input {
    String? channel
    Boolean? show_recipe
    String name
  }
  command <<<
    ggd pkg-info \
      ~{name} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{true="--show_recipe" false="" show_recipe}
  >>>
  parameter_meta {
    channel: "The ggd channel of the recipe to list info about (Default = genomics)"
    show_recipe: "(Optional) When the flag is set, the recipe will be printed to the stdout. This will provide info on where the data is hosted and how it was processed. (NOTE: -sr flag does not accept arguments)"
    name: "the name of the recipe to get info about"
  }
}