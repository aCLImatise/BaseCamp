version 1.0

task Damageprofiler {
  input {
    File? required_sambamcram_file
    Directory? required_output_folder
    File? reference_file_fasta
    Int? damageplot_number_bases
    String? reference_sequence_name
    File? title
    String? yaxis_dp_max
    String? color_c_t
    String? color_g_a
    String? color_insertions
    String? color_deletions
    String? color_other
    Boolean? only_merged
    Boolean? ss_lib
    File? sf
    Boolean? v
  }
  command <<<
    damageprofiler \
      ~{if defined(required_sambamcram_file) then ("-i " +  '"' + required_sambamcram_file + '"') else ""} \
      ~{if defined(required_output_folder) then ("-o " +  '"' + required_output_folder + '"') else ""} \
      ~{if defined(reference_file_fasta) then ("-r " +  '"' + reference_file_fasta + '"') else ""} \
      ~{if defined(damageplot_number_bases) then ("-t " +  '"' + damageplot_number_bases + '"') else ""} \
      ~{if defined(reference_sequence_name) then ("-s " +  '"' + reference_sequence_name + '"') else ""} \
      ~{if defined(title) then ("-title " +  '"' + title + '"') else ""} \
      ~{if defined(yaxis_dp_max) then ("-yaxis_dp_max " +  '"' + yaxis_dp_max + '"') else ""} \
      ~{if defined(color_c_t) then ("-color_c_t " +  '"' + color_c_t + '"') else ""} \
      ~{if defined(color_g_a) then ("-color_g_a " +  '"' + color_g_a + '"') else ""} \
      ~{if defined(color_insertions) then ("-color_insertions " +  '"' + color_insertions + '"') else ""} \
      ~{if defined(color_deletions) then ("-color_deletions " +  '"' + color_deletions + '"') else ""} \
      ~{if defined(color_other) then ("-color_other " +  '"' + color_other + '"') else ""} \
      ~{if (only_merged) then "-only_merged" else ""} \
      ~{if (ss_lib) then "-sslib" else ""} \
      ~{if defined(sf) then ("-sf " +  '"' + sf + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/damageprofiler:1.1--0"
  }
  parameter_meta {
    required_sambamcram_file: "REQUIRED. The input sam/bam/cram file."
    required_output_folder: "REQUIRED. The output folder."
    reference_file_fasta: "The reference file (fasta format)."
    damageplot_number_bases: "DamagePlot: Number of bases which are considered for plotting nucleotide misincorporations.\\nDefault: 25"
    reference_sequence_name: "Reference sequence name (Reference NAME flag of SAM record). For more details see"
    title: "Title used for all plots. Default: input filename."
    yaxis_dp_max: "DamagePlot: Maximal y-axis value."
    color_c_t: "DamagePlot: Color (HEX code) for C to T misincoporation frequency."
    color_g_a: "DamagePlot: Color (HEX code) for G to A misincoporation frequency."
    color_insertions: "DamagePlot: Color (HEX code) for base insertions."
    color_deletions: "DamagePlot: Color (HEX code) for base deletions."
    color_other: "DamagePlot: Color (HEX code) for other bases different to reference."
    only_merged: "Use only mapped and merged (in case of paired-end sequencing) reads to calculate the damage\\nplot instead of using all mapped reads. The SAM/BAM entry must start with 'M_', otherwise it\\nwill be skipped. Default: false"
    ss_lib: "Single-stranded library protocol was used. Default: false"
    sf: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_required_output_folder = "${in_required_output_folder}"
  }
}