version 1.0

task PauvreBrowser {
  input {
    Boolean? quiet
    String? chromosome_id
    String? dpi
    Array[String] file_form
    Boolean? no_timestamp
    String? output_base_name
    File? path
    Array[String] plot_commands
    Array[String] ratio
    String? reference
    String? start
    String? stop
    Boolean? transparent
  }
  command <<<
    pauvre browser \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(chromosome_id) then ("--chromosomeid " +  '"' + chromosome_id + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(file_form) then ("--fileform " +  '"' + file_form + '"') else ""} \
      ~{true="--no_timestamp" false="" no_timestamp} \
      ~{if defined(output_base_name) then ("--output-base-name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(plot_commands) then ("--plot_commands " +  '"' + plot_commands + '"') else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{true="--transparent" false="" transparent}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    chromosome_id: "The fasta sequence to observe. Use the header name of the fasta file without the '>' character"
    dpi: "Change the dpi from the default 600 if you need it higher"
    file_form: "Which output format would you like? Def.=png"
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file( s). The input file base name is the default."
    path: "Set an explicit filepath for the output. Only do this if you have selected one output type."
    plot_commands: "Write strings here to select what to plot. The format for each track is: <type>:<path>:<style>:<options> To plot the reference, the format is: ref:<style>:<options> Surround each track string with double quotes and a space between subsequent strings. \"bam:mybam.bam:depth\" \"ref:colorful\""
    ratio: "Enter the dimensions (arbitrary units) to plot the figure. For example a figure that is seven times wider than tall is: --ratio 7 1"
    reference: "The reference fasta file."
    start: "The start position to observe on the fasta file. Uses 1-based indexing."
    stop: "The stop position to observe on the fasta file. Uses 1-based indexing."
    transparent: "Specify this option if you DON'T want a transparent background. Default is on."
  }
}