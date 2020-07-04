version 1.0

task FastutilsRevcomp {
  input {
    String? in
    String? out
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
      ~{true="--fastq" false="" fast_q} \
      ~{true="--comment" false="" comment} \
      ~{true="--lex" false="" lex}
  >>>
  parameter_meta {
    in: "input file in fasta/q format [stdin]"
    out: "output file [stdout]"
    linewidth: "size of lines in fasta output. Use 0 for no wrapping [0]"
    fast_q: "output reads in fastq format if possible"
    comment: "print comments in headers"
    lex: "output lexicographically smaller sequence"
  }
}