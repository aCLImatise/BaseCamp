version 1.0

task Fasta2stabpl {
  input {
    Int? extract_only_line
    Boolean? ignore_n
  }
  command <<<
    fasta2stab_pl \
      ~{if defined(extract_only_line) then ("-l " +  '"' + extract_only_line + '"') else ""} \
      ~{if (ignore_n) then "-ignore_N" else ""}
  >>>
  parameter_meta {
    extract_only_line: ": Extract only line <num> of the fasta from each sequence\\n(useful for parsing alignments given in fasta)"
    ignore_n: ":  Do not print sequences that contain N."
  }
  output {
    File out_stdout = stdout()
  }
}