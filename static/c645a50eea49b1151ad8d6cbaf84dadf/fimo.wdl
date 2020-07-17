version 1.0

task Fimo {
  input {
    Float? thresh
    Boolean? verbosity
    String motif_file
    String sequence_file
  }
  command <<<
    fimo \
      ~{motif_file} \
      ~{sequence_file} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""} \
      ~{true="--verbosity" false="" verbosity}
  >>>
  parameter_meta {
    thresh: "(default = 1e-4)"
    verbosity: "[1|2|3|4] (default 2)"
    motif_file: ""
    sequence_file: ""
  }
}