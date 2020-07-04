version 1.0

task Mobius.py {
  input {
    Boolean? force_trans
    String? an_no_trans
    String? read_thresh
    String splice_junctions
    String genome_fast_a
  }
  command <<<
    Mobius.py \
      ~{splice_junctions} \
      ~{genome_fast_a} \
      ~{true="-forceTrans" false="" force_trans} \
      ~{if defined(an_no_trans) then ("-AnnoTrans " +  '"' + an_no_trans + '"') else ""} \
      ~{if defined(read_thresh) then ("-readThresh " +  '"' + read_thresh + '"') else ""}
  >>>
  parameter_meta {
    force_trans: "Force blocks where annotated transcripts start and end"
    an_no_trans: "Flattened SuperTranscript annotation file"
    read_thresh: "The minimum number of reads in all combined samples required to support a splice junction (default=5)"
    splice_junctions: "The name of the Splice Junctions tab file (in the format of the one STAR produces)"
    genome_fast_a: "A fasta file containing the sequence for all genes in genome"
  }
}