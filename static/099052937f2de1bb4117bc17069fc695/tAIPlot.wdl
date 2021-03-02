version 1.0

task TAIPlot {
  input {
    File? input_file_txt
    String? downstream_codon
    String? upstream_codon
    String? prefix_output_files
    File? format
    String? mode
    String? a_xv_line
    Int? start
    Int? window
    Int? step
    Int? ymax
    Int? ymin
  }
  command <<<
    tAIPlot \
      ~{if defined(input_file_txt) then ("--input " +  '"' + input_file_txt + '"') else ""} \
      ~{if defined(downstream_codon) then ("--downstream_codon " +  '"' + downstream_codon + '"') else ""} \
      ~{if defined(upstream_codon) then ("--upstream_codon " +  '"' + upstream_codon + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(a_xv_line) then ("--axvline " +  '"' + a_xv_line + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(ymin) then ("--ymin " +  '"' + ymin + '"') else ""}
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
    mode: "Control the mode for plot.[all or single]. default=all"
    a_xv_line: "Position to plot vetical line"
    start: "The start position need to be averaged.default=5"
    window: "The length of silde window. ddefault=7"
    step: "The step length of slide window. default=1"
    ymax: "The max of ylim. default=none"
    ymin: "The min of ylim. default=none"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}