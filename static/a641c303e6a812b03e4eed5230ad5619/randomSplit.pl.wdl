version 1.0

task RandomSplitpl {
  input {
    String dbfile
    Int size
  }
  command <<<
    randomSplit_pl \
      ~{dbfile} \
      ~{size}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    dbfile: ""
    size: ""
  }
  output {
    File out_stdout = stdout()
  }
}