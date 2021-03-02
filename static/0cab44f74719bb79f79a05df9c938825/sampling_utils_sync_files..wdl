version 1.0

task SamplingutilsSyncFiles {
  input {
    String sampling_utils
    String sync
    String? input_file
    String? output_file
  }
  command <<<
    sampling_utils sync files_ \
      ~{sampling_utils} \
      ~{sync} \
      ~{input_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    sampling_utils: ""
    sync: ""
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}