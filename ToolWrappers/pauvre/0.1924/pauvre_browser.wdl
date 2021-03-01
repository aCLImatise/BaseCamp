version 1.0

task PauvreBrowser {
  input {
    Boolean? quiet
    File? chromosome_id
    Int? dpi
    File? no_timestamp
    File? output_base_name
    File? path
    Array[String] plot_commands
    Array[String] ratio
    File? reference
    File? start
    File? stop
    Boolean? transparent
    String higher
  }
  command <<<
    pauvre browser \
      ~{higher} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(chromosome_id) then ("--chromosomeid " +  '"' + chromosome_id + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (no_timestamp) then "--no_timestamp" else ""} \
      ~{if defined(output_base_name) then ("--output-base-name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(plot_commands) then ("--plot_commands " +  '"' + plot_commands + '"') else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if (transparent) then "--transparent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    chromosome_id: "The fasta sequence to observe. Use the header name of\\nthe fasta file without the '>' character"
    dpi: "Change the dpi from the default 600 if you need it"
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file( s). The input\\nfile base name is the default."
    path: "Set an explicit filepath for the output. Only do this\\nif you have selected one output type."
    plot_commands: "Write strings here to select what to plot. The format\\nfor each track is: <type>:<path>:<style>:<options> To\\nplot the reference, the format is:\\nref:<style>:<options> Surround each track string with\\ndouble quotes and a space between subsequent strings.\\n\\\"bam:mybam.bam:depth\\\" \\\"ref:colorful\\\""
    ratio: "Enter the dimensions (arbitrary units) to plot the\\nfigure. For example a figure that is seven times wider\\nthan tall is: --ratio 7 1"
    reference: "The reference fasta file."
    start: "The start position to observe on the fasta file. Uses\\n1-based indexing."
    stop: "The stop position to observe on the fasta file. Uses\\n1-based indexing."
    transparent: "Specify this option if you DON'T want a transparent\\nbackground. Default is on.\\n"
    higher: "--fileform STRING [STRING ...]"
  }
  output {
    File out_stdout = stdout()
    File out_no_timestamp = "${in_no_timestamp}"
    File out_path = "${in_path}"
  }
}