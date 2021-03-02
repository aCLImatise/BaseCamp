version 1.0

task RtgSdfsubseq {
  input {
    String? input_sdf
    Boolean? sequence_id
    Boolean? fast_a
    Boolean? fast_q
    String? reverse_complement
  }
  command <<<
    rtg sdfsubseq \
      ~{if defined(input_sdf) then ("--input " +  '"' + input_sdf + '"') else ""} \
      ~{if (sequence_id) then "--sequence-id" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if defined(reverse_complement) then ("--reverse-complement " +  '"' + reverse_complement + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    input_sdf: "input SDF"
    sequence_id: "if set, use sequence id instead of sequence name in\\nregion (0-based)\\nREGION+              the range to display. The format is one of\\n<sequence_name>, <sequence_name>:<start>-<end>,\\n<sequence_name>:<pos>+<length> or\\n<sequence_name>:<pos>~<padding>. Must be specified 1\\nor more times"
    fast_a: "if set, output in FASTA format"
    fast_q: "if set, output in FASTQ format"
    reverse_complement: "set, output in reverse complement"
  }
  output {
    File out_stdout = stdout()
  }
}