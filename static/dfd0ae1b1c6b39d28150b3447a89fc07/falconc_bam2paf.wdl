version 1.0

task FalconcBam2paf {
  input {
    Boolean? help_syntax
    Boolean? _inbamfn_string
    File? outppaffn_string_required
    File? out_a_paf_fn
    Int bam_two_paf
  }
  command <<<
    falconc bam2paf \
      ~{bam_two_paf} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_inbamfn_string) then "-i" else ""} \
      ~{if (outppaffn_string_required) then "-o" else ""} \
      ~{if (out_a_paf_fn) then "--out-a-paf-fn" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _inbamfn_string: "=, --in-bam-fn=     string  REQUIRED  input bam filename"
    outppaffn_string_required: "=, --out-p-paf-fn=  string  REQUIRED  output paf filename for p-contigs"
    out_a_paf_fn: "=       string  REQUIRED  output paf filename for a-contigs\\n(those with - in their name)\\n"
    bam_two_paf: ""
  }
  output {
    File out_stdout = stdout()
    File out_outppaffn_string_required = "${in_outppaffn_string_required}"
    File out_out_a_paf_fn = "${in_out_a_paf_fn}"
  }
}