version 1.0

task LocarnaMcc {
  input {
    String? structure_annotation_file
    String? parameter_file_for
    Boolean? ali_fold_args
    Boolean? assume_fast_a
    Boolean? man
    Boolean? verbose
    Boolean? quiet
    String aln_file
  }
  command <<<
    locarna_mcc \
      ~{aln_file} \
      ~{if defined(structure_annotation_file) then ("-f " +  '"' + structure_annotation_file + '"') else ""} \
      ~{if defined(parameter_file_for) then ("-P " +  '"' + parameter_file_for + '"') else ""} \
      ~{true="--alifold-args" false="" ali_fold_args} \
      ~{true="--assume-fasta" false="" assume_fast_a} \
      ~{true="--man" false="" man} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    structure_annotation_file: "Structure annotation file. Mandatory argument."
    parameter_file_for: "Parameter file for RNAalifold"
    ali_fold_args: "Alifold arguments (default: same as mlocarna)"
    assume_fast_a: "Assume that input is in fasta format (instead of clustalw aln)"
    man: "Full documentation"
    verbose: "Verbose"
    quiet: "Quiet"
    aln_file: ""
  }
}