version 1.0

task BedtoolsMakewindows {
  input {
    String? genome_file_size
    String? bed_file_fields
    String? divide_interval_fixedsized
    String? step_size_pairs
    String? divide_interval_fixed
    Boolean? reverse
    String? winnumsrcwinnum_default_output
    String? or
  }
  command <<<
    bedtools makewindows \
      ~{or} \
      ~{if defined(genome_file_size) then ("-g " +  '"' + genome_file_size + '"') else ""} \
      ~{if defined(bed_file_fields) then ("-b " +  '"' + bed_file_fields + '"') else ""} \
      ~{if defined(divide_interval_fixedsized) then ("-w " +  '"' + divide_interval_fixedsized + '"') else ""} \
      ~{if defined(step_size_pairs) then ("-s " +  '"' + step_size_pairs + '"') else ""} \
      ~{if defined(divide_interval_fixed) then ("-n " +  '"' + divide_interval_fixed + '"') else ""} \
      ~{true="-reverse" false="" reverse} \
      ~{if defined(winnumsrcwinnum_default_output) then ("-i " +  '"' + winnumsrcwinnum_default_output + '"') else ""}
  >>>
  parameter_meta {
    genome_file_size: "Genome file size (see notes below). Windows will be created for each chromosome in the file."
    bed_file_fields: "BED file (with chrom,start,end fields). Windows will be created for each interval in the file."
    divide_interval_fixedsized: "Divide each input interval (either a chromosome or a BED interval) to fixed-sized windows (i.e. same number of nucleotide in each window). Can be combined with -s <step_size>"
    step_size_pairs: "Step size: i.e., how many base pairs to step before creating a new window. Used to create \"sliding\" windows. - Defaults to window size (non-sliding windows)."
    divide_interval_fixed: "Divide each input interval (either a chromosome or a BED interval) to fixed number of windows (i.e. same number of windows, with varying window sizes)."
    reverse: "Reverse numbering of windows in the output, i.e. report  windows in decreasing order"
    winnumsrcwinnum_default_output: "|winnum|srcwinnum The default output is 3 columns: chrom, start, end . With this option, a name column will be added. \"-i src\" - use the source interval's name. \"-i winnum\" - use the window number as the ID (e.g. 1,2,3,4...). \"-i srcwinnum\" - use the source interval's name with the window number. See below for usage examples."
    or: ""
  }
}