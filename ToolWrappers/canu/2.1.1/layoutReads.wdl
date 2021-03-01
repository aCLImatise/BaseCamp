version 1.0

task LayoutReads {
  input {
    Boolean? seqpath_mandatory_path
    Boolean? ovlpath_mandatory_path
    Boolean? readlistpath_mandatory_path
    Int? gs
    Boolean? outprefix_mandatory_prefix
    Int? em
    Int? eg
    Boolean? no_contains
    String parameters
  }
  command <<<
    layoutReads \
      ~{parameters} \
      ~{if (seqpath_mandatory_path) then "-S" else ""} \
      ~{if (ovlpath_mandatory_path) then "-O" else ""} \
      ~{if (readlistpath_mandatory_path) then "-R" else ""} \
      ~{if defined(gs) then ("-gs " +  '"' + gs + '"') else ""} \
      ~{if (outprefix_mandatory_prefix) then "-o" else ""} \
      ~{if defined(em) then ("-eM " +  '"' + em + '"') else ""} \
      ~{if defined(eg) then ("-eg " +  '"' + eg + '"') else ""} \
      ~{if (no_contains) then "-nocontains" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    seqpath_mandatory_path: "seqPath        Mandatory path to an existing seqStore."
    ovlpath_mandatory_path: "ovlPath        Mandatory path to an existing ovlStore."
    readlistpath_mandatory_path: "readListPath   Mandatory path to an existing ovlStore."
    gs: "Mandatory genome size in bp."
    outprefix_mandatory_prefix: "outPrefix      Mandatory prefix for the output files."
    em: "Max error rate of overlaps to load."
    eg: "Max error rate of overlaps to use for placing contained reads."
    no_contains: "Do not place contained reads."
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}