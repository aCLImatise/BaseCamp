version 1.0

task Bed2nt2aapl {
  input {
    Boolean? bed
    Boolean? fa
    Boolean? aa
    File? stdout
    Boolean? man
  }
  command <<<
    bed2nt2aa_pl \
      ~{if (bed) then "--bed" else ""} \
      ~{if (fa) then "--fa" else ""} \
      ~{if (aa) then "--aa" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Input file in BED6 format (mandatory)"
    fa: "Input file in Fasta format (mandatory)"
    aa: "Translate nucleotide into amino acid sequences, providing all three\\npossible frames"
    stdout: "Write output to STDOUT instead of an output file 'sequence.fa'"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    File out_stdout = "${in_stdout}"
  }
}