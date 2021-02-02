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
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_inbam_string) then "-i" else ""} \
      ~{if (_region_string) then "-r" else ""} \
      ~{if (_flag_int) then "-f" else ""} \
      ~{if (flip_rc) then "--flip-rc" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _inbam_string: "=, --in-bam=  string  REQUIRED  input bam name"
    _region_string: "=, --region=  string  REQUIRED  htslib formatted region seqid:start-end"
    _flag_int: "=, --flag=    int     3844      filter reads with flag"
    flip_rc: "bool    false     reverse complement (RC) the sequence if\\nalignment is in RC\\n"
  }
  output {
    File out_stdout = stdout()
  }
}