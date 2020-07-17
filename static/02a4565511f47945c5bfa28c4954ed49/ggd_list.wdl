version 1.0

task GgdList {
  input {
    String? pattern
    String? prefix
  }
  command <<<
    ggd list \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    pattern: "(Optional) pattern to match the name of the ggd data package."
    prefix: "(Optional) The name or the full directory path to a conda environment where a ggd recipe is stored. (Only needed if not getting file paths for files in the current conda enviroment)"
  }
}