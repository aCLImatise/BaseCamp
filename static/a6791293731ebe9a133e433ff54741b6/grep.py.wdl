version 1.0

task Greppy {
  input {
    Boolean? reverse
    String? separator
    File? field
    Boolean? quiet
  }
  command <<<
    grep_py \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    reverse: "Equivalent to the \\\"-v\\\" grep option"
    separator: "The field separator. Default: consecutive\\nwhitespace(s)"
    field: "The field to look in the target file."
    quiet: "No logging."
  }
  output {
    File out_stdout = stdout()
  }
}