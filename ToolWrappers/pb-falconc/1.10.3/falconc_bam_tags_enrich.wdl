version 1.0

task FalconcBamtagsenrich {
  input {
    Boolean? help_syntax
    File? outputfn_string_required
    Boolean? inputfn_string_required
    String bam_tags_enrich
  }
  command <<<
    falconc bam_tags_enrich \
      ~{bam_tags_enrich} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (outputfn_string_required) then "-o" else ""} \
      ~{if (inputfn_string_required) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    outputfn_string_required: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    inputfn_string_required: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'\\n"
    bam_tags_enrich: ""
  }
  output {
    File out_stdout = stdout()
    File out_outputfn_string_required = "${in_outputfn_string_required}"
  }
}