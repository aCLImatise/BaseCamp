version 1.0

task OcModuleUninstall {
  input {
    Boolean? yes
    String modules
  }
  command <<<
    oc module uninstall \
      ~{modules} \
      ~{if (yes) then "--yes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    yes: "Proceed without prompt"
    modules: "Modules to uninstall"
  }
  output {
    File out_stdout = stdout()
  }
}