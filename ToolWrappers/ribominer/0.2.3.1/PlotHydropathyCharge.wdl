version 1.0

task PlotHydropathyCharge {
  input {
    File? input_file_txt
    String? downstream_codon
    String? upstream_codon
    String? prefix_output_files
    File? format
    String? left_position
    String? right_position
    Int? ymin
    Int? ymax
    String? mode
    String? a_xv_line
    String? ylab
    Int? start
    Int? window
    Int? step
  }
  command <<<
    PlotHydropathyCharge \
      ~{if defined(input_file_txt) then ("--input " +  '"' + input_file_txt + '"') else ""} \
      ~{if defined(downstream_codon) then ("--downstream_codon " +  '"' + downstream_codon + '"') else ""} \
      ~{if defined(upstream_codon) then ("--upstream_codon " +  '"' + upstream_codon + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(left_position) then ("--left-position " +  '"' + left_position + '"') else ""} \
      ~{if defined(right_position) then ("--right-position " +  '"' + right_position + '"') else ""} \
      ~{if defined(ymin) then ("--ymin " +  '"' + ymin + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(a_xv_line) then ("--axvline " +  '"' + a_xv_line + '"') else ""} \
      ~{if defined(ylab) then ("--ylab " +  '"' + ylab + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_file_txt: "Input file in txt format.And the files has three\\ncolumns; column 1: sample;columns 2: start_density;\\ncolumn 3: stop_density"
    downstream_codon: "Downstream codon corresponding to start codon (codon\\nunit). While corresponding to stop codon, it is the\\nupstream codon."
    upstream_codon: "Upstream codon corresponding to start codon (codon\\nunit). While corresponding to stop codon, it is the\\ndownstream codon."
    prefix_output_files: "Prefix of output files.[required]"
    format: "Output file format,'pdf','png' or 'jpg'. default=pdf"
    left_position: "The left position of the region that you are\\ninterested in. default=none"
    right_position: "The right position of the region that you are\\ninterested in. default=none"
    ymin: "The max of ylim. default=none"
    ymax: "The max of ylim. default=none"
    mode: "Control the mode for plot.[all or single]. default=all"
    a_xv_line: "Position to plot vetical line"
    ylab: "labels for y axis.'Average hydrophobicity' or 'Average\\ncharges'"
    start: "The start position need to be averaged.default=5"
    window: "The length of silde window. ddefault=7"
    step: "The step length of slide window. default=1"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}