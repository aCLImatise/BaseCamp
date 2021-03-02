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
      ~{if (bam) then "--bam" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (path_filtered_default) then "--output" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0"
  }
  parameter_meta {
    bam: ".bam-file to filter"
    regions: ".bed-file containing regions to filter fragments from"
    mode: "Mode 1: Remove fragment if both reads overlap .bed-regions. Mode 2:\\nRemove whole fragment if one read is overlapping .bed-regions\\n(default: 1)"
    path_filtered_default: "Path to the filtered .bam-file (default: <prefix of"
    threads: "Number of threads used for decompressing/compressing bam (default:\\n10)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\\nstats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}