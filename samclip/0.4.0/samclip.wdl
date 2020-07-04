version 1.0

task Samclip {
  input {
    String? ref
    String? max
    Boolean? invert
    Boolean? debug
    String? progress
  }
  command <<<
    samclip \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{true="--invert" false="" invert} \
      ~{true="--debug" false="" debug} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""}
  >>>
  parameter_meta {
    ref: "Reference genome - needs FASTA.fai index"
    max: "Maximum clip length to allow (default=5)"
    invert: "Output rejected SAM lines and ignore good ones"
    debug: "Print verbose debug info to stderr"
    progress: "Print progress every NUM records (default=100000,none=0)"
  }
}