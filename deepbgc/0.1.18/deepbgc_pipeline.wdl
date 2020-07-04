version 1.0

task DeepbgcPipeline {
  input {
    String? custom_output_directory
    String? limit_to_record
    Boolean? minimal_output
    Boolean? prodigal_meta_mode
    Boolean? protein
    String? detector
    Boolean? no_detector
    String? label
    String? score
    String? merge_max_protein_gap
    String? merge_max_nucl_gap
    Int? min_nucl
    Int? min_proteins
    Int? min_domains
    Int? min_bio_domains
    String? classifier
    Boolean? no_classifier
    String? classifier_score
    Boolean? debug
    String inputs
  }
  command <<<
    deepbgc pipeline \
      ~{inputs} \
      ~{if defined(custom_output_directory) then ("--output " +  '"' + custom_output_directory + '"') else ""} \
      ~{if defined(limit_to_record) then ("--limit-to-record " +  '"' + limit_to_record + '"') else ""} \
      ~{true="--minimal-output" false="" minimal_output} \
      ~{true="--prodigal-meta-mode" false="" prodigal_meta_mode} \
      ~{true="--protein" false="" protein} \
      ~{if defined(detector) then ("--detector " +  '"' + detector + '"') else ""} \
      ~{true="--no-detector" false="" no_detector} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(merge_max_protein_gap) then ("--merge-max-protein-gap " +  '"' + merge_max_protein_gap + '"') else ""} \
      ~{if defined(merge_max_nucl_gap) then ("--merge-max-nucl-gap " +  '"' + merge_max_nucl_gap + '"') else ""} \
      ~{if defined(min_nucl) then ("--min-nucl " +  '"' + min_nucl + '"') else ""} \
      ~{if defined(min_proteins) then ("--min-proteins " +  '"' + min_proteins + '"') else ""} \
      ~{if defined(min_domains) then ("--min-domains " +  '"' + min_domains + '"') else ""} \
      ~{if defined(min_bio_domains) then ("--min-bio-domains " +  '"' + min_bio_domains + '"') else ""} \
      ~{if defined(classifier) then ("--classifier " +  '"' + classifier + '"') else ""} \
      ~{true="--no-classifier" false="" no_classifier} \
      ~{if defined(classifier_score) then ("--classifier-score " +  '"' + classifier_score + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    custom_output_directory: "Custom output directory path"
    limit_to_record: "Process only specific record ID. Can be provided multiple times"
    minimal_output: "Produce minimal output with just the GenBank sequence file"
    prodigal_meta_mode: "Run Prodigal in '-p meta' mode to enable detecting genes in short contigs"
    protein: "Accept amino-acid protein sequences as input (experimental). Will treat each file as a single record with multiple proteins."
    detector: "Trained detection model name (deepbgc) or path to trained model pickle file. Can be provided multiple times (-d first -d second)"
    no_detector: "Disable BGC detection"
    label: "Label for detected clusters (equal to --detector by default). If multiple detectors are provided, a label should be provided for each one"
    score: "Average protein-wise DeepBGC score threshold for extracting BGC regions from Pfam sequences (default: 0.5)"
    merge_max_protein_gap: "Merge detected BGCs within given number of proteins (default: 0)"
    merge_max_nucl_gap: "Merge detected BGCs within given number of nucleotides (default: 0)"
    min_nucl: "Minimum BGC nucleotide length (default: 1)"
    min_proteins: "Minimum number of proteins in a BGC (default: 1)"
    min_domains: "Minimum number of protein domains in a BGC (default: 1)"
    min_bio_domains: "Minimum number of known biosynthetic (as defined by antiSMASH) protein domains in a BGC (default: 0)"
    classifier: "Trained classification model name (run \"deepbgc download\" to download models) or path to trained model pickle file. Can be provided multiple times (-c first -c second)"
    no_classifier: "Disable BGC classification"
    classifier_score: "DeepBGC classification score threshold for assigning classes to BGCs (default: 0.5)"
    debug: ""
    inputs: "Input sequence file path (FASTA, GenBank, Pfam CSV)"
  }
}