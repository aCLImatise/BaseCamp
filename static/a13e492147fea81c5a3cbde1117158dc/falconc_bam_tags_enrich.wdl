version 1.0

task FalconcBamtagsenrich {
  input {
    Boolean? help_syntax
    File? _outputfn_string
    Boolean? _inputfn_string
  }
  command <<<
    falconc bam_tags_enrich \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_outputfn_string) then "-o" else ""} \
      ~{if (_inputfn_string) then "-i" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _outputfn_string: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    _inputfn_string: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'\\n"
  }
  output {
    File out_stdout = stdout()
    File out__outputfn_string = "${in__outputfn_string}"
  }
}