version 1.0

task LorikeetFilter {
  input {
    Int? min_read_aligned_length
    Int? min_read_percent_identity
  }
  command <<<
    lorikeet filter \
      ~{if defined(min_read_aligned_length) then ("--min-read-aligned-length " +  '"' + min_read_aligned_length + '"') else ""} \
      ~{if defined(min_read_percent_identity) then ("--min-read-percent-identity " +  '"' + min_read_percent_identity + '"') else ""}
  >>>
  parameter_meta {
    min_read_aligned_length: ""
    min_read_percent_identity: ""
  }
  output {
    File out_stdout = stdout()
  }
}