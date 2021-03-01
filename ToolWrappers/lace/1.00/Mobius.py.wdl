version 1.0

task Mobiuspy {
  input {
    Boolean? force_trans
    File? an_no_trans
    Int? read_thresh
    String splice_junctions
    String genome_fast_a
    String genome
  }
  command <<<
    Mobius_py \
      ~{splice_junctions} \
      ~{genome_fast_a} \
      ~{genome} \
      ~{if (force_trans) then "-forceTrans" else ""} \
      ~{if defined(an_no_trans) then ("-AnnoTrans " +  '"' + an_no_trans + '"') else ""} \
      ~{if defined(read_thresh) then ("-readThresh " +  '"' + read_thresh + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force_trans: "Force blocks where annotated transcripts start and end"
    an_no_trans: "Flattened SuperTranscript annotation file"
    read_thresh: "The minimum number of reads in all combined samples\\nrequired to support a splice junction (default=5)\\n"
    splice_junctions: "The name of the Splice Junctions tab file (in the\\nformat of the one STAR produces)"
    genome_fast_a: "A fasta file containing the sequence for all genes in"
    genome: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}