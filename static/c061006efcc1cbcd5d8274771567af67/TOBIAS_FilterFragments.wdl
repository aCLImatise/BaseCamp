version 1.0

task TOBIASFilterFragments {
  input {
    Boolean? bam
    Boolean? regions
    String? mode
    Boolean? path_filtered_default
    Boolean? threads
    Int? verbosity
  }
  command <<<
    TOBIAS FilterFragments \
      ~{true="--bam" false="" bam} \
      ~{true="--regions" false="" regions} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--output" false="" path_filtered_default} \
      ~{true="--threads" false="" threads} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bam: ".bam-file to filter"
    regions: ".bed-file containing regions to filter fragments from"
    mode: "Mode 1: Remove fragment if both reads overlap .bed-regions. Mode 2: Remove whole fragment if one read is overlapping .bed-regions (default: 1)"
    path_filtered_default: "Path to the filtered .bam-file (default: <prefix of --bam>_filtered.bam)"
    threads: "Number of threads used for decompressing/compressing bam (default: 10)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}