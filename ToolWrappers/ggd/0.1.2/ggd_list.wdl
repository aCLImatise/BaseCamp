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
    docker: "None"
  }
  parameter_meta {
    pattern: "(Optional) pattern to match the name of the ggd data\\npackage."
    prefix: "(Optional) The name or the full directory path to a\\nconda environment where a ggd recipe is stored. (Only\\nneeded if not getting file paths for files in the\\ncurrent conda enviroment)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}