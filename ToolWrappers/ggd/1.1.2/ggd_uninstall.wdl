version 1.0

task GgdUninstall {
  input {
    String? channel
    String names
  }
  command <<<
    ggd uninstall \
      ~{names} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0"
  }
  parameter_meta {
    channel: "The ggd channel of the recipe to uninstall. (Default =\\ngenomics)\\n"
    names: "the name(s) of the ggd package(s) to uninstall"
  }
  output {
    File out_stdout = stdout()
  }
}