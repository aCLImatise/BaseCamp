version 1.0

task HivtraceStripDrams {
  input {
    File? input_fasta_file
    String? d
    String? o
    String var_output
  }
  command <<<
    hivtrace_strip_drams \
      ~{var_output} \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "The input FASTA file"
    d: ""
    o: ""
    var_output: "-d {lewis,wheeler}, --dram {lewis,wheeler}"
  }
  output {
    File out_stdout = stdout()
  }
}