version 1.0

task GetSeq {
  input {
    String mysql
  }
  command <<<
    getSeq \
      ~{mysql}
  >>>
  parameter_meta {
    mysql: ""
  }
}