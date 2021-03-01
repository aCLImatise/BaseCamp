version 1.0

task SeqhaxTrunc {
  input {
    Int? fixed_integer_length
    Int? truncate_prop_length
  }
  command <<<
    seqhax trunc \
      ~{if defined(fixed_integer_length) then ("-l " +  '"' + fixed_integer_length + '"') else ""} \
      ~{if defined(truncate_prop_length) then ("-p " +  '"' + truncate_prop_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fixed_integer_length: "Fixed (integer) length to truncate at."
    truncate_prop_length: "Truncate at PROP * length bases"
  }
  output {
    File out_stdout = stdout()
  }
}