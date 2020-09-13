version 1.0

task HivtraceStripDrams {
  input {
    File? input_fasta_file
    String? var_1
    String? d
    String d
  }
  command <<<
    hivtrace_strip_drams \
      ~{d} \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(var_1) then ("--output " +  '"' + var_1 + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "The input FASTA file"
    var_1: ""
    d: "-d {lewis,wheeler}, --dram {lewis,wheeler}"
  }
  output {
    File out_stdout = stdout()
  }
}