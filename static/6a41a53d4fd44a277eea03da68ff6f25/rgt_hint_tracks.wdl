version 1.0

task RgtHintTracks {
  input {
    String? organism
    File? bias_table
    Boolean? raw
    Boolean? bc
    Boolean? norm
    Boolean? bigwig
    Boolean? strand_specific
    File? output_location
    String? output_prefix
  }
  command <<<
    rgt-hint tracks \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{true="--raw" false="" raw} \
      ~{true="--bc" false="" bc} \
      ~{true="--norm" false="" norm} \
      ~{true="--bigWig" false="" bigwig} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been setup in the RGTDATA folder. Common choices are hg19, hg38. mm9, and mm10. DEFAULT: hg19"
    bias_table: ",FILE1_R Bias table files used to generate bias corrected tracks. DEFAULT: None"
    raw: "If set, the raw signals from DNase-seq or ATAC-seq data will be generated. DEFAULT: False"
    bc: "If set, the bias corrected signals from DNase-seq or ATAC-seq data will be generated. DEFAULT: False"
    norm: "If set, the normalised signals from DNase-seq or ATAC- seq data will be generated. DEFAULT: False"
    bigwig: "If set, all .wig files will be converted to .bw files. DEFAULT: False"
    strand_specific: "If set, the tracks will be splitted into two files, one for forward and another for reverse strand. DEFAULT: False"
    output_location: "Path where the output bias table files will be written. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: tracks"
  }
}