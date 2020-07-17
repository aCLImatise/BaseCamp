version 1.0

task FetchChromSizes {
  input {
    String db
  }
  command <<<
    fetchChromSizes \
      ~{db}
  >>>
  parameter_meta {
    db: ""
  }
}