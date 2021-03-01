version 1.0

task Fullsimplify {
  input {
    Boolean? fs
    Boolean? fp
    Boolean? fpi
    Boolean? crd
    Boolean? overlapped_edge_property
    Boolean? assembly_parameter_file
    File? output_filename_prefix
    Boolean? simp_th
    Boolean? ovl
    Boolean? log
    String param
  }
  command <<<
    fullsimplify \
      ~{param} \
      ~{if (fs) then "-fs" else ""} \
      ~{if (fp) then "-fp" else ""} \
      ~{if (fpi) then "-fpi" else ""} \
      ~{if (crd) then "-crd" else ""} \
      ~{if (overlapped_edge_property) then "-e" else ""} \
      ~{if (assembly_parameter_file) then "-p" else ""} \
      ~{if (output_filename_prefix) then "-o" else ""} \
      ~{if (simp_th) then "-simPth" else ""} \
      ~{if (ovl) then "-ovl" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fs: "contained single read reduction read filename(s) (comma separated fasta/fastq)"
    fp: "contained paired-end read reduction read filename(s) in pairs of 2 (comma separated fasta/fastq)"
    fpi: "contained interleaved paired-end read reduction read filename(s) (comma separated fasta/fastq)"
    crd: "Contained read file (default: none)"
    overlapped_edge_property: "overlapped edge property graph filename(s) (comma separated edge list)"
    assembly_parameter_file: "assembly parameter file (default: parameter.cfg)"
    output_filename_prefix: "all output filename prefix"
    simp_th: "path to partial simplification executable"
    ovl: "minimum overlap length (default: 0, use all overlap found in edge property graph files)"
    log: "verbosity level of log messages: ERROR, WARNING, INFO (default: INFO)"
    param: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_prefix = "${in_output_filename_prefix}"
  }
}