version 1.0

task ReadSeqReverseComp {
  input {
    Boolean? check
    String? format
    String? in_file
    String? outfile
    String rev_complement
  }
  command <<<
    ReadSeq reverse-comp \
      ~{rev_complement} \
      ~{true="--check" false="" check} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    check: "If set, will check orientation of the rRNA sequenc, only reverse complement if needed"
    format: "output format, fasta or fastq. Default is fasta"
    in_file: "input fasta file"
    outfile: "output fasta file"
    rev_complement: ""
  }
}