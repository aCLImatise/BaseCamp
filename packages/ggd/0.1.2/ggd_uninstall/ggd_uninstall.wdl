version 1.0

task GgdUninstall {
  input {
    String? channel
    String name
  }
  command <<<
    ggd uninstall \
      ~{name} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""}
  >>>
  parameter_meta {
    channel: "The ggd channel of the recipe to uninstall. (Default =\\ngenomics)\\n"
    name: "the name of the recipe to uninstall"
  }
  output {
    File out_stdout = stdout()
  }
}