version 1.0

task SortedMerge {
  input {
    Int? key
    File? output_file_devfd
    Boolean? numerical
    String var_input
  }
  command <<<
    sorted_merge \
      ~{var_input} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(output_file_devfd) then ("--output " +  '"' + output_file_devfd + '"') else ""} \
      ~{if (numerical) then "--numerical" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    key: "Key (1 base column number) for sorting (1)"
    output_file_devfd: "Output file instead of stdout (/dev/fd/1)"
    numerical: "Numerical sort (false)"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_devfd = "${in_output_file_devfd}"
  }
}