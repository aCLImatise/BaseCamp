version 1.0

task FastutilsRevcomp {
  input {
    File? in
    File? out
    Int? linewidth
    Boolean? fast_q
    Boolean? comment
    Boolean? lex
  }
  command <<<
    fastutils revcomp \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(linewidth) then ("--lineWidth " +  '"' + linewidth + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (comment) then "--comment" else ""} \
      ~{if (lex) then "--lex" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "input file in fasta/q format [stdin]"
    out: "output file [stdout]"
    linewidth: "size of lines in fasta output. Use 0 for no wrapping [0]"
    fast_q: "output reads in fastq format if possible"
    comment: "print comments in headers"
    lex: "output lexicographically smaller sequence"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}