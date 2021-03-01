version 1.0

task RgthintDifferential {
  input {
    Directory? organism
    File? m_pbs_files
    File? reads_files
    Int? conditions
    String? colors
    Int? window_size
    Boolean? bc
    Int? nc
    File? output_location
    String? output_prefix
    Boolean? standardize
    Int _fdr_float
    String plotting_dot
  }
  command <<<
    rgt_hint differential \
      ~{_fdr_float} \
      ~{plotting_dot} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(m_pbs_files) then ("--mpbs-files " +  '"' + m_pbs_files + '"') else ""} \
      ~{if defined(reads_files) then ("--reads-files " +  '"' + reads_files + '"') else ""} \
      ~{if defined(conditions) then ("--conditions " +  '"' + conditions + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (bc) then "--bc" else ""} \
      ~{if defined(nc) then ("--nc " +  '"' + nc + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (standardize) then "--standardize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19,\\nhg38. mm9, and mm10. DEFAULT: hg19"
    m_pbs_files: ",FILE2...\\nPredicted motif binding sites for each condition.Files\\nshould be separated with comma."
    reads_files: ",FILE2...\\nReads for each condition. Files should be separated\\nwith comma."
    conditions: "Name for each condition. DEFAULT:\\ncondition1,condition2, ..."
    colors: "Set color in line plot. DEFAULT: None, ..."
    window_size: "The window size for differential analysis. DEFAULT:"
    bc: "If set, all analysis will be based on bias corrected\\nsignal. DEFAULT: False"
    nc: "The number of cores. DEFAULT: 1"
    output_location: "Path where the output bias table files will be\\nwritten. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: differential"
    standardize: "If set, the signal will be rescaled to (0, 1) for"
    _fdr_float: "--fdr FLOAT           The false discovery rate. DEFAULT: 0.05"
    plotting_dot: "--output-profiles     If set, the footprint profiles will be writen into a"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}