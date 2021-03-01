version 1.0

task AlfredTracks {
  input {
    Boolean? arg_min_mapping
    Boolean? arg_pairs_normalize
    Boolean? arg_coverage_type
    Boolean? _arg_resolution
    Boolean? arg_track_file
    Boolean? f
    String aligned_dot_bam
  }
  command <<<
    alfred tracks \
      ~{aligned_dot_bam} \
      ~{if (arg_min_mapping) then "-m" else ""} \
      ~{if (arg_pairs_normalize) then "-n" else ""} \
      ~{if (arg_coverage_type) then "-c" else ""} \
      ~{if (_arg_resolution) then "-r" else ""} \
      ~{if (arg_track_file) then "-o" else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_min_mapping: "[ --map-qual ] arg (=10)           min. mapping quality"
    arg_pairs_normalize: "[ --normalize ] arg (=30000000)    #pairs to normalize to (0: no\\nnormalization)"
    arg_coverage_type: "[ --covtype ] arg (=0)             coverage type (0: sequencing coverage,\\n1: spanning coverage, 2: footprinting)"
    _arg_resolution: "[ --resolution ] arg (=0.200000003)\\nfractional resolution ]0,1]"
    arg_track_file: "[ --outfile ] arg (=\\\"track.gz\\\")    track file"
    f: "[ --format ] arg (=bedgraph)       output format [bedgraph|bed|wiggle|raw]"
    aligned_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}