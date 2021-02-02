version 1.0

task Seqmerge {
  input {
    String? separator
  }
  command <<<
    seqmerge \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  parameter_meta {
    separator: "sequence count will be appended as '(SEP)COUNT'\\n"
  }
  output {
    File out_stdout = stdout()
  }
}