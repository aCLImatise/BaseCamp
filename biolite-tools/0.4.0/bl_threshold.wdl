version 1.0

task Blthreshold {
  input {
    Int? nonnegative_length
    File? file_print_reads
    String threshold
    String? var_input
  }
  command <<<
    bl_threshold \
      ~{threshold} \
      ~{var_input} \
      ~{if defined(nonnegative_length) then ("-n " +  '"' + nonnegative_length + '"') else ""} \
      ~{if defined(file_print_reads) then ("-s " +  '"' + file_print_reads + '"') else ""}
  >>>
  parameter_meta {
    nonnegative_length: "non-negative length"
    file_print_reads: "file to print short reads to"
    threshold: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}