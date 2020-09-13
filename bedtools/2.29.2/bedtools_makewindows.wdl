version 1.0

task BedtoolsMakewindows {
  input {
    Int? genome_file_size
    File? bed_file_chromstartend
    Int? divide_fixedsized_windows
    Int? step_size_ie
    Int? divide_input_fixed
    Boolean? reverse
    Int? winnumsrcwinnumthe_default_output
    Int chr_one
    Int chr_two
    Int chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  }
  command <<<
    bedtools makewindows \
      ~{chr_one} \
      ~{chr_two} \
      ~{chr_one_eight_gl_zero_zero_zero_two_zero_seven_random} \
      ~{if defined(genome_file_size) then ("-g " +  '"' + genome_file_size + '"') else ""} \
      ~{if defined(bed_file_chromstartend) then ("-b " +  '"' + bed_file_chromstartend + '"') else ""} \
      ~{if defined(divide_fixedsized_windows) then ("-w " +  '"' + divide_fixedsized_windows + '"') else ""} \
      ~{if defined(step_size_ie) then ("-s " +  '"' + step_size_ie + '"') else ""} \
      ~{if defined(divide_input_fixed) then ("-n " +  '"' + divide_input_fixed + '"') else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(winnumsrcwinnumthe_default_output) then ("-i " +  '"' + winnumsrcwinnumthe_default_output + '"') else ""}
  >>>
  parameter_meta {
    genome_file_size: "Genome file size (see notes below).\\nWindows will be created for each chromosome in the file."
    bed_file_chromstartend: "BED file (with chrom,start,end fields).\\nWindows will be created for each interval in the file."
    divide_fixedsized_windows: "Divide each input interval (either a chromosome or a BED interval)\\nto fixed-sized windows (i.e. same number of nucleotide in each window).\\nCan be combined with -s <step_size>"
    step_size_ie: "Step size: i.e., how many base pairs to step before\\ncreating a new window. Used to create \\\"sliding\\\" windows.\\n- Defaults to window size (non-sliding windows)."
    divide_input_fixed: "Divide each input interval (either a chromosome or a BED interval)\\nto fixed number of windows (i.e. same number of windows, with\\nvarying window sizes)."
    reverse: "Reverse numbering of windows in the output, i.e. report\\nwindows in decreasing order"
    winnumsrcwinnumthe_default_output: "|winnum|srcwinnum\\nThe default output is 3 columns: chrom, start, end .\\nWith this option, a name column will be added.\\n\\\"-i src\\\" - use the source interval's name.\\n\\\"-i winnum\\\" - use the window number as the ID (e.g. 1,2,3,4...).\\n\\\"-i srcwinnum\\\" - use the source interval's name with the window number.\\nSee below for usage examples."
    chr_one: "249250621"
    chr_two: "243199373"
    chr_one_eight_gl_zero_zero_zero_two_zero_seven_random: "4262"
  }
  output {
    File out_stdout = stdout()
  }
}