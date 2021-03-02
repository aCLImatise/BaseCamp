version 1.0

task OcModuleUpdate {
  input {
    Boolean? proceed_without_prompt
    String? strategy
    String modules
  }
  command <<<
    oc module update \
      ~{modules} \
      ~{if (proceed_without_prompt) then "-y" else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    proceed_without_prompt: "Proceed without prompt"
    strategy: "Dependency resolution strategy. \\\"consensus\\\" will\\nattemp to resolve dependencies. \\\"force\\\" will install\\nthe highest available version. \\\"skip\\\" will skip\\nmodules with constraints.\\n"
    modules: "Modules to update."
  }
  output {
    File out_stdout = stdout()
  }
}