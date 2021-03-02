version 1.0

task PlotEnrichmentRatio {
  input {
    File? input_file_txt
    String? downstream_codon
    String? upstream_codon
    String? prefix_output_files
    File? format
    Int? ymin
    Int? ymax
    String? unit
    String? mode
    String? a_xv_line
    String? a_xh_line
    String? label
    Int? slide_window
    Int? start
    Int? window
    Int? step
    Int? ci
  }
  command <<<
    PlotEnrichmentRatio \
      ~{if defined(input_file_txt) then ("--input " +  '"' + input_file_txt + '"') else ""} \
      ~{if defined(downstream_codon) then ("--downstream_codon " +  '"' + downstream_codon + '"') else ""} \
      ~{if defined(upstream_codon) then ("--upstream_codon " +  '"' + upstream_codon + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(ymin) then ("--ymin " +  '"' + ymin + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(unit) then ("--unit " +  '"' + unit + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(a_xv_line) then ("--axvline " +  '"' + a_xv_line + '"') else ""} \
      ~{if defined(a_xh_line) then ("--axhline " +  '"' + a_xh_line + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(slide_window) then ("--slide-window " +  '"' + slide_window + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(ci) then ("--CI " +  '"' + ci + '"') else ""}
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
    ymin: "The max of ylim. default=none"
    ymax: "The max of ylim. default=none"
    unit: "Unit for density calculation.[codon or nt]"
    mode: "Mode for plot, you can chose plot all samples or\\nsingle sample. [all or single]"
    a_xv_line: "Position to plot a vertical line in x axis.\\ndefault=none"
    a_xh_line: "Position to plot a vertical line in y axis.\\ndefault=none"
    label: "The legend labels used for plot. default=none"
    slide_window: "Using slide window to average the density.Input a\\ntrue strings such as yes, y or 1. none=default"
    start: "The start position need to be averaged.default=5"
    window: "The length of silde window. ddefault=7"
    step: "The step length of slide window. default=1"
    ci: "plot the confidence intervals or not. If yes, plot the\\nCI region(95% CI default the same as\\nmetageneAnalysis.py). else, no. default=none\\n"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}