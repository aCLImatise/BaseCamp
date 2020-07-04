version 1.0

task BxtoolsTile {
  input {
    Boolean? verbose
    Boolean? width
    Boolean? overlap
    Boolean? bed
    Boolean? tag
    String bam_slash_sam_slash_cram
  }
  command <<<
    bxtools tile \
      ~{bam_slash_sam_slash_cram} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--width" false="" width} \
      ~{true="--overlap" false="" overlap} \
      ~{true="--bed" false="" bed} \
      ~{true="--tag" false="" tag}
  >>>
  parameter_meta {
    verbose: "Set verbose output"
    width: "Width of the tile [1000]"
    overlap: "Overlap of the tiles [0]"
    bed: "Rather than tile genome, input BED with regions"
    tag: "Tag other than BX to evaluate (e.g. MI)"
    bam_slash_sam_slash_cram: ""
  }
}