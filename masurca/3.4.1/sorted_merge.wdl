version 1.0

task SortedMerge {
  input {
    String? key
    File? output_file_stdout
    Boolean? numerical
    String var_input
  }
  command <<<
    sorted_merge \
      ~{var_input} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(output_file_stdout) then ("--output " +  '"' + output_file_stdout + '"') else ""} \
      ~{true="--numerical" false="" numerical}
  >>>
  parameter_meta {
    key: "Key (1 base column number) for sorting (1)"
    output_file_stdout: "Output file instead of stdout (/dev/fd/1)"
    numerical: "Numerical sort (false)"
    var_input: ""
  }
}