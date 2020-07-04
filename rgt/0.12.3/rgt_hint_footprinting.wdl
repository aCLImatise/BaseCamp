version 1.0

task RgtHintFootprinting {
  input {
    String? organism
    File? hmm_file
    File? bias_table
    Boolean? paired_end
    Boolean? bias_correction
    String? bias_type
    File? output_location
    String? output_prefix
    Boolean? atac_seq
    Boolean? dnase_seq
    Boolean? histone
  }
  command <<<
    rgt-hint footprinting \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(hmm_file) then ("--hmm-file " +  '"' + hmm_file + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--bias-correction" false="" bias_correction} \
      ~{if defined(bias_type) then ("--bias-type " +  '"' + bias_type + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--atac-seq" false="" atac_seq} \
      ~{true="--dnase-seq" false="" dnase_seq} \
      ~{true="--histone" false="" histone}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been setup in the RGTDATA folder. Common choices are hg19, hg38. mm9, and mm10. DEFAULT: hg19"
    hmm_file: "If the argument is not given, then a default HMM will be used."
    bias_table: ",FILE_R List of files with all possible k-mers (for any k) and their bias estimates. Each line should contain a kmer and the bias estimate separated by tab."
    paired_end: "Set it if your ATAC-seq data is paired-end sequenced. Note that this option is only applied to ATAC-seq data. DEFAULT: False"
    bias_correction: "If set, footprint calling will based on bias corrected DNase-seq signal. This option is only applied to DNase-seq. DEFAULT: False"
    bias_type: "Type of protocol used to generate the DNase-seq. Available options are: 'SH' (DNase-seq single-hit protocol), 'DH' (DNase-seq double-hit protocol). DEFAULT: SH"
    output_location: "Path where the output bias table files will be written. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: footprints"
    atac_seq: "If set, footprint calling will based on ATAC-seq model. DEFAULT: False"
    dnase_seq: "If set, footprint calling will based on DNase-seq model. DEFAULT: False"
    histone: "If set, footprint calling will based on histone modification model. DEFAULT: False"
  }
}