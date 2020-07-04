version 1.0

task Fullsimplify {
  input {
    Boolean? fs
    Boolean? fp
    Boolean? fpi
    Boolean? crd
    Boolean? overlapped_graph_filenames
    Boolean? assembly_parameter_file
    Boolean? output_filename_prefix
    Boolean? simp_th
    Boolean? h_slash_help
    Boolean? ovl
    Boolean? log
    String? option
  }
  command <<<
    fullsimplify \
      ~{option} \
      ~{true="-fs" false="" fs} \
      ~{true="-fp" false="" fp} \
      ~{true="-fpi" false="" fpi} \
      ~{true="-crd" false="" crd} \
      ~{true="-e" false="" overlapped_graph_filenames} \
      ~{true="-p" false="" assembly_parameter_file} \
      ~{true="-o" false="" output_filename_prefix} \
      ~{true="-simPth" false="" simp_th} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="-ovl" false="" ovl} \
      ~{true="-log" false="" log}
  >>>
  parameter_meta {
    fs: "contained single read reduction read filename(s) (comma separated fasta/fastq)"
    fp: "contained paired-end read reduction read filename(s) in pairs of 2 (comma separated fasta/fastq)"
    fpi: "contained interleaved paired-end read reduction read filename(s) (comma separated fasta/fastq)"
    crd: "Contained read file (default: none)"
    overlapped_graph_filenames: "overlapped edge property graph filename(s) (comma separated edge list)"
    assembly_parameter_file: "assembly parameter file (default: parameter.cfg)"
    output_filename_prefix: "all output filename prefix"
    simp_th: "path to partial simplification executable"
    h_slash_help: "only print out the help contents"
    ovl: "minimum overlap length (default: 0, use all overlap found in edge property graph files)"
    log: "verbosity level of log messages: ERROR, WARNING, INFO (default: INFO)"
    option: ""
  }
}