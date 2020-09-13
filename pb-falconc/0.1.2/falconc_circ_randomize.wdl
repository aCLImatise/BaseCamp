version 1.0

task FalconcCircrandomize {
  input {
    Boolean? help_syntax
    Boolean? _input_string
    File? _output_string
    Boolean? _seed_seed
  }
  command <<<
    falconc circ_randomize \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_input_string) then "-i" else ""} \
      ~{if (_output_string) then "-o" else ""} \
      ~{if (_seed_seed) then "-s" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _input_string: "=, --input=   string  REQUIRED  fasta file of circular sequences"
    _output_string: "=, --output=  string  REQUIRED  fasta file output"
    _seed_seed: "=, --seed=    int64   0         set seed, if non-zero"
  }
  output {
    File out_stdout = stdout()
    File out__output_string = "${in__output_string}"
  }
}