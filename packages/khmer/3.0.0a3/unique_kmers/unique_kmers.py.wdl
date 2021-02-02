version 1.0

task Uniquekmerspy {
  input {
    Int? k
    Boolean? q
    Boolean? info
    String input_sequence_filename
  }
  command <<<
    unique_kmers_py \
      ~{input_sequence_filename} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    k: ""
    q: ""
    info: ""
    input_sequence_filename: "Input FAST[AQ] sequence filename(s)."
  }
  output {
    File out_stdout = stdout()
  }
}