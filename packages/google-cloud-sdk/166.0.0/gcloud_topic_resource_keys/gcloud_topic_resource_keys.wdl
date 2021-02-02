version 1.0

task GcloudTopicResourcekeys {
  input {
    String foo
  }
  command <<<
    gcloud topic resource_keys \
      ~{foo}
  >>>
  parameter_meta {
    foo: "foo.bar"
  }
  output {
    File out_stdout = stdout()
  }
}