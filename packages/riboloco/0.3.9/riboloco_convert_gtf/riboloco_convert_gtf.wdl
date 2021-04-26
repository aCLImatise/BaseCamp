version 1.0

task RibolocoConvertGtf {
  input {
    File? input_gtf
    File? output_filename
    Boolean? filter_for_longest
    Boolean? no_fast_a
    Int? stop_correction
    String? feature_type_word
    String? transcript_id_word
    Int? early_stop
    Boolean? bypass_tx_type_filter
  }
  command <<<
    riboloco_convert_gtf \
      ~{if defined(input_gtf) then ("--input_gtf " +  '"' + input_gtf + '"') else ""} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""} \
      ~{if (filter_for_longest) then "--filter_for_longest" else ""} \
      ~{if (no_fast_a) then "--no_fasta" else ""} \
      ~{if defined(stop_correction) then ("--stop_correction " +  '"' + stop_correction + '"') else ""} \
      ~{if defined(feature_type_word) then ("--feature_type_word " +  '"' + feature_type_word + '"') else ""} \
      ~{if defined(transcript_id_word) then ("--transcript_id_word " +  '"' + transcript_id_word + '"') else ""} \
      ~{if defined(early_stop) then ("--early_stop " +  '"' + early_stop + '"') else ""} \
      ~{if (bypass_tx_type_filter) then "--bypass_tx_type_filter" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0"
  }
  parameter_meta {
    input_gtf: "A gtf file with your genome annotation. Can be .gz\\ncompressed."
    output_filename: "The outfile filename"
    filter_for_longest: "Only use the longest protein coding transcript\\nassociated with each gene."
    no_fast_a: "Don't generate a fasta of transcripts"
    stop_correction: "Add 3 nt for stop codon. Can be changed to 0 depending\\non whether the annotation includes the stop codon\\nwithin the annotated CDSs."
    feature_type_word: "Which transcript types to filter for. Set to 'all' to\\ndisable. Default=protein_coding"
    transcript_id_word: "The key word that signifies exons. Default=exon"
    early_stop: "Stop after n reads parsed. -1 to disable (default)"
    bypass_tx_type_filter: "Sets CDS to same as transcript. Useful for writing out\\neg snoRNAs\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}