version 1.0

task GgdList {
  input {
    String? pattern
    File? prefix
  }
  command <<<
    ggd list \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0"
  }
  parameter_meta {
    pattern: "(Optional) pattern to match the name of the ggd data\\npackage."
    prefix: "(Optional) The name or the full directory path to a\\nconda environment where a ggd recipe is stored. (Only\\nneeded if listing data files not in the current\\nenvironment)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}