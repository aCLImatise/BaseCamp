version 1.0

task Fasta2stabpl {
  input {
    Int? extract_line_num
    Boolean? ignore_n
  }
  command <<<
    fasta2stab_pl \
      ~{if defined(extract_line_num) then ("-l " +  '"' + extract_line_num + '"') else ""} \
      ~{if (ignore_n) then "-ignore_N" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extract_line_num: ": Extract only line <num> of the fasta from each sequence\\n(useful for parsing alignments given in fasta)"
    ignore_n: ":  Do not print sequences that contain N."
  }
  output {
    File out_stdout = stdout()
  }
}