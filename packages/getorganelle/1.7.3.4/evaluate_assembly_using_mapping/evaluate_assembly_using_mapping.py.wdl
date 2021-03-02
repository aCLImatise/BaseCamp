version 1.0

task EvaluateAssemblyUsingMappingpy {
  input {
    File? input_assembly_fasta
    Int? input_files_unpaired
    Int? max_lib_len
    String? yesnoauto_input_fasta
    Directory? output_folder
    String? threads
    Int? continue
    Boolean? draw
    File? plot_title
    Int? plot_subtitle
    Boolean? plot_transparent
    Float? plot_x_density
    Int? plot_x_gap_dots
    Float? plot_figure_height
    String? plot_y_lim
    String? plot_font
    Int? disable_customized_error_rate
    Int? bowtie_two_mode
    Int? bowtie_two_options
    Int? stat_mode
    Boolean? debug
    String installed_dot
  }
  command <<<
    evaluate_assembly_using_mapping_py \
      ~{installed_dot} \
      ~{if defined(input_assembly_fasta) then ("-f " +  '"' + input_assembly_fasta + '"') else ""} \
      ~{if defined(input_files_unpaired) then ("-1 " +  '"' + input_files_unpaired + '"') else ""} \
      ~{if defined(max_lib_len) then ("--max-lib-len " +  '"' + max_lib_len + '"') else ""} \
      ~{if defined(yesnoauto_input_fasta) then ("-c " +  '"' + yesnoauto_input_fasta + '"') else ""} \
      ~{if defined(output_folder) then ("-o " +  '"' + output_folder + '"') else ""} \
      ~{if defined(threads) then ("-t " +  '"' + threads + '"') else ""} \
      ~{if defined(continue) then ("--continue " +  '"' + continue + '"') else ""} \
      ~{if (draw) then "--draw" else ""} \
      ~{if defined(plot_title) then ("--plot-title " +  '"' + plot_title + '"') else ""} \
      ~{if defined(plot_subtitle) then ("--plot-subtitle " +  '"' + plot_subtitle + '"') else ""} \
      ~{if (plot_transparent) then "--plot-transparent" else ""} \
      ~{if defined(plot_x_density) then ("--plot-x-density " +  '"' + plot_x_density + '"') else ""} \
      ~{if defined(plot_x_gap_dots) then ("--plot-x-gap-dots " +  '"' + plot_x_gap_dots + '"') else ""} \
      ~{if defined(plot_figure_height) then ("--plot-figure-height " +  '"' + plot_figure_height + '"') else ""} \
      ~{if defined(plot_y_lim) then ("--plot-y-lim " +  '"' + plot_y_lim + '"') else ""} \
      ~{if defined(plot_font) then ("--plot-font " +  '"' + plot_font + '"') else ""} \
      ~{if defined(disable_customized_error_rate) then ("--disable-customized-error-rate " +  '"' + disable_customized_error_rate + '"') else ""} \
      ~{if defined(bowtie_two_mode) then ("--bowtie2-mode " +  '"' + bowtie_two_mode + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{if defined(stat_mode) then ("--stat-mode " +  '"' + stat_mode + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    input_assembly_fasta: "input assembly fasta file."
    input_files_unpaired: "Input file(s) with unpaired (single-end) reads to be\\nadded to the pool. files could be comma-separated\\nlists such as 'seq1,seq2'."
    max_lib_len: "Corresponding to '-X' option in Bowtie2. Default:\\n1200."
    yesnoauto_input_fasta: "(yes/no/auto) input fasta is circular. If auto was\\nchosen, the input fasta would be treated as circular\\nwhen the sequence name ends with '(circular)'.\\nDefault: auto"
    output_folder: "output folder."
    threads: "threads."
    continue: "Seed for random number generator. Default: 12345"
    draw: "Draw density plot using matplotlib, which should be"
    plot_title: "Default: `the file name of the input fasta`"
    plot_subtitle: "A 4-space indicates a line break. Default: None"
    plot_transparent: "Default: False"
    plot_x_density: "Default: 12000.0"
    plot_x_gap_dots: "Number of sites added in-between isolated contigs.\\nDefault: 3000"
    plot_figure_height: "Default: 5.0"
    plot_y_lim: "Y axis value limit."
    plot_font: "For plot of unicode characters in some environments.\\nUse 'Times New Roman','Arial' etc. Default: none."
    disable_customized_error_rate: "Assign the path to Bowtie2 binary files if not added\\nto the path. Default: try\\nGetOrganelleDep/linux/bowtie2 first, then $PATH"
    bowtie_two_mode: "Default: --sensitive"
    bowtie_two_options: "Default: --no-discordant --dovetail"
    stat_mode: "Statistical mode for counting multiple hits of a\\nsingle read: best/all. The all mode is meaningful only\\nwhen '-k <INT>' was included in '--bowtie2-options'.\\nDefault: best"
    debug: "Turn on debug mode."
    installed_dot: "--plot-format=PLOT_FORMAT"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}