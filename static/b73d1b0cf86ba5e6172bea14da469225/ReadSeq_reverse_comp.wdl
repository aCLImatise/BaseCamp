version 1.0

task ReadSeqReversecomp {
  input {
    Boolean? check
    String? format
    File? in_file
    File? outfile
    String rev_complement
  }
  command <<<
    ReadSeq reverse_comp \
      ~{rev_complement} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check: "If set, will check orientation of the rRNA sequenc, only reverse complement if needed"
    format: "output format, fasta or fastq. Default is fasta"
    in_file: "input fasta file"
    outfile: "output fasta file"
    rev_complement: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}