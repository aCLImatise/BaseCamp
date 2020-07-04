version 1.0

task MedakaMethylation {
  input {
    Boolean? debug
    Boolean? quiet
    String guppy_two_sam
    String call_methylation_file
  }
  command <<<
    medaka methylation \
      ~{guppy_two_sam} \
      ~{call_methylation_file} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    guppy_two_sam: "Convert Guppy .fast5 files with methylation calls to .sam file, output to stdout."
    call_methylation_file: "Call methylation from .bam file."
  }
}