version 1.0

task GetSeq {
  input {
    Boolean? rc
    Int? start
    Int? end
    String mysql
  }
  command <<<
    getSeq \
      ~{mysql} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rc: "output the reverse complement of the sequence"
    start: "retrieve subsequence starting at position N (coordinates are 1-based)"
    end: "retrieve subsequence ending at position N (coordinates are 1-based)"
    mysql: ""
  }
  output {
    File out_stdout = stdout()
  }
}