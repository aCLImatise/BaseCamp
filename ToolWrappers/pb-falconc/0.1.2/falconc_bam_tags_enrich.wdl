version 1.0

task FalconcBamtagsenrich {
  input {
    Boolean? help_syntax
    File? outputfn_string_required
    Boolean? inputfn_string_required
  }
  command <<<
    falconc bam_tags_enrich \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (outputfn_string_required) then "-o" else ""} \
      ~{if (inputfn_string_required) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    outputfn_string_required: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    inputfn_string_required: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outputfn_string_required = "${in_outputfn_string_required}"
  }
}