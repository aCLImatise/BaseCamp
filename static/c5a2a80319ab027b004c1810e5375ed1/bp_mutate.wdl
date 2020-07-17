version 1.0

task BpMutate.pl {
  input {
    String? percent
    Boolean? number
    Boolean? output_file_optional
    Boolean? format
    Boolean? input_file
  }
  command <<<
    bp_mutate.pl \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{true="--number" false="" number} \
      ~{true="--output" false="" output_file_optional} \
      ~{true="--format" false="" format} \
      ~{true="--input" false="" input_file}
  >>>
  parameter_meta {
    percent: "mutagenized"
    number: "Number of mutant sequences created"
    output_file_optional: "Output file (optional)"
    format: "Output format (default: fasta)"
    input_file: "Input file"
  }
}