version 1.0

task SingularityCacheList {
  input {
    String? type
    Boolean? verbose
    String? list
  }
  command <<<
    singularity cache list \
      ~{list} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "a list of cache types to display, possible entries:\\nlibrary, oci, shub, blob(s), all (default [all])"
    verbose: "include cache entries in the output"
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}