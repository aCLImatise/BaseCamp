version 1.0

task OcUtilTest {
  input {
    Directory? run_dir
    Array[String] modules
    Array[String] mod_types
  }
  command <<<
    oc util test \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(modules) then ("--modules " +  '"' + modules + '"') else ""} \
      ~{if defined(mod_types) then ("--mod_types " +  '"' + mod_types + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    run_dir: "Directory for output"
    modules: "Name of module(s) to test. (e.g. gnomad)"
    mod_types: "Type of module(s) to test (e.g. annotators)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_run_dir = "${in_run_dir}"
  }
}