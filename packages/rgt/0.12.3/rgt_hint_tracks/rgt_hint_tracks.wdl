version 1.0

task RgthintTracks {
  input {
    Directory? organism
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
    rgt_hint tracks \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if (bc) then "--bc" else ""} \
      ~{if (norm) then "--norm" else ""} \
      ~{if (bigwig) then "--bigWig" else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19,\\nhg38. mm9, and mm10. DEFAULT: hg19"
    bias_table: ",FILE1_R\\nBias table files used to generate bias corrected\\ntracks. DEFAULT: None"
    raw: "If set, the raw signals from DNase-seq or ATAC-seq\\ndata will be generated. DEFAULT: False"
    bc: "If set, the bias corrected signals from DNase-seq or\\nATAC-seq data will be generated. DEFAULT: False"
    norm: "If set, the normalised signals from DNase-seq or ATAC-\\nseq data will be generated. DEFAULT: False"
    bigwig: "If set, all .wig files will be converted to .bw files.\\nDEFAULT: False"
    strand_specific: "If set, the tracks will be splitted into two files,\\none for forward and another for reverse strand.\\nDEFAULT: False"
    output_location: "Path where the output bias table files will be\\nwritten. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: tracks\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}