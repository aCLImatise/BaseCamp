version 1.0

task Fasta2stab.pl.bak {
  input {
    String? extract_only_num
    Boolean? ignore_n
  }
  command <<<
    fasta2stab.pl.bak \
      ~{if defined(extract_only_num) then ("-l " +  '"' + extract_only_num + '"') else ""} \
      ~{true="-ignore_N" false="" ignore_n}
  >>>
  parameter_meta {
    extract_only_num: ": Extract only line <num> of the fasta from each sequence (useful for parsing alignments given in fasta)"
    ignore_n: ":  Do not print sequences that contain N."
  }
}