version 1.0

task RgthintFootprinting {
  input {
    Directory? organism
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
    rgt_hint footprinting \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(hmm_file) then ("--hmm-file " +  '"' + hmm_file + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (bias_correction) then "--bias-correction" else ""} \
      ~{if defined(bias_type) then ("--bias-type " +  '"' + bias_type + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (atac_seq) then "--atac-seq" else ""} \
      ~{if (dnase_seq) then "--dnase-seq" else ""} \
      ~{if (histone) then "--histone" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19,\\nhg38. mm9, and mm10. DEFAULT: hg19"
    hmm_file: "If the argument is not given, then a default HMM will\\nbe used."
    bias_table: ",FILE_R\\nList of files with all possible k-mers (for any k) and\\ntheir bias estimates. Each line should contain a kmer\\nand the bias estimate separated by tab."
    paired_end: "Set it if your ATAC-seq data is paired-end sequenced.\\nNote that this option is only applied to ATAC-seq\\ndata. DEFAULT: False"
    bias_correction: "If set, footprint calling will based on bias corrected\\nDNase-seq signal. This option is only applied to\\nDNase-seq. DEFAULT: False"
    bias_type: "Type of protocol used to generate the DNase-seq.\\nAvailable options are: 'SH' (DNase-seq single-hit\\nprotocol), 'DH' (DNase-seq double-hit protocol).\\nDEFAULT: SH"
    output_location: "Path where the output bias table files will be\\nwritten. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: footprints"
    atac_seq: "If set, footprint calling will based on ATAC-seq\\nmodel. DEFAULT: False"
    dnase_seq: "If set, footprint calling will based on DNase-seq\\nmodel. DEFAULT: False"
    histone: "If set, footprint calling will based on histone\\nmodification model. DEFAULT: False\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}