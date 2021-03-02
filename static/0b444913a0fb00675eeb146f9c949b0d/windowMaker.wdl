version 1.0

task WindowMaker {
  input {
    Int? genome_file_size
    File? bed_file_chromstartend
    Int? divide_interval_fixedsized
    Int? step_size_ie
    Int? divide_interval_fixed
    Boolean? reverse
    Int? default_output_columns
    String bed_tools
    String make_windows
    String? or
  }
  command <<<
    windowMaker \
      ~{bed_tools} \
      ~{make_windows} \
      ~{or} \
      ~{if defined(genome_file_size) then ("-g " +  '"' + genome_file_size + '"') else ""} \
      ~{if defined(bed_file_chromstartend) then ("-b " +  '"' + bed_file_chromstartend + '"') else ""} \
      ~{if defined(divide_interval_fixedsized) then ("-w " +  '"' + divide_interval_fixedsized + '"') else ""} \
      ~{if defined(step_size_ie) then ("-s " +  '"' + step_size_ie + '"') else ""} \
      ~{if defined(divide_interval_fixed) then ("-n " +  '"' + divide_interval_fixed + '"') else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(default_output_columns) then ("-i " +  '"' + default_output_columns + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    genome_file_size: "Genome file size (see notes below).\\nWindows will be created for each chromosome in the file."
    bed_file_chromstartend: "BED file (with chrom,start,end fields).\\nWindows will be created for each interval in the file."
    divide_interval_fixedsized: "Divide each input interval (either a chromosome or a BED interval)\\nto fixed-sized windows (i.e. same number of nucleotide in each window).\\nCan be combined with -s <step_size>"
    step_size_ie: "Step size: i.e., how many base pairs to step before\\ncreating a new window. Used to create \\\"sliding\\\" windows.\\n- Defaults to window size (non-sliding windows)."
    divide_interval_fixed: "Divide each input interval (either a chromosome or a BED interval)\\nto fixed number of windows (i.e. same number of windows, with\\nvarying window sizes)."
    reverse: "Reverse numbering of windows in the output, i.e. report\\nwindows in decreasing order"
    default_output_columns: "|winnum|srcwinnum\\nThe default output is 3 columns: chrom, start, end .\\nWith this option, a name column will be added.\\n\\\"-i src\\\" - use the source interval's name.\\n\\\"-i winnum\\\" - use the window number as the ID (e.g. 1,2,3,4...).\\n\\\"-i srcwinnum\\\" - use the source interval's name with the window number.\\nSee below for usage examples."
    bed_tools: ""
    make_windows: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}