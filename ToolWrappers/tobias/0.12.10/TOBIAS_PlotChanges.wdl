version 1.0

task TOBIASPlotChanges {
  input {
    Boolean? bin_detect
    Boolean? tfs
    File? output_file_bindetectchangespdf
    Boolean? conditions
    Int? verbosity
  }
  command <<<
    TOBIAS PlotChanges \
      ~{if (bin_detect) then "--bindetect" else ""} \
      ~{if (tfs) then "--TFS" else ""} \
      ~{if (output_file_bindetectchangespdf) then "--output" else ""} \
      ~{if (conditions) then "--conditions" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0"
  }
  parameter_meta {
    bin_detect: "Bindetect_results.txt file from BINDetect run"
    tfs: "Text file containing names of TFs to show in plot (one per line)"
    output_file_bindetectchangespdf: "Output file for plot (default: bindetect_changes.pdf)"
    conditions: "[ [ ...]]  Ordered list of conditions to show (default: conditions are\\nordered as within the bindetect file)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info,\\n3: stats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_bindetectchangespdf = "${in_output_file_bindetectchangespdf}"
  }
}