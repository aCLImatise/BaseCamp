version 1.0

task GetAbundancePostCollapsepy {
  input {
    String get
    String abundance
  }
  command <<<
    get_abundance_post_collapse_py \
      ~{get} \
      ~{abundance}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    get: ""
    abundance: ""
  }
  output {
    File out_stdout = stdout()
  }
}