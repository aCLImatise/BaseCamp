version 1.0

task FalconcBam2clippedFasta {
  input {
    Boolean? help_syntax
    Boolean? _inbam_string
    Boolean? _region_string
    Boolean? _flag_int
    Boolean? flip_rc
  }
  command <<<
    falconc bam2clippedFasta \
      ~{true="--help-syntax" false="" help_syntax} \
      ~{true="-i" false="" _inbam_string} \
      ~{true="-r" false="" _region_string} \
      ~{true="-f" false="" _flag_int} \
      ~{true="--flip-rc" false="" flip_rc}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _inbam_string: "=, --in-bam=  string  REQUIRED  input bam name"
    _region_string: "=, --region=  string  REQUIRED  htslib formatted region seqid:start-end"
    _flag_int: "=, --flag=    int     3844      filter reads with flag"
    flip_rc: "bool    false     reverse complement (RC) the sequence if alignment is in RC"
  }
}