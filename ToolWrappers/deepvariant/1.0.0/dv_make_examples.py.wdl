version 1.0

task DvMakeExamplespy {
  input {
    Boolean? reads
    String? ref
    String? sample
    String? cores
  }
  command <<<
    dv_make_examples_py \
      ~{if (reads) then "--reads" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.0.0--py36hf5a246b_0"
  }
  parameter_meta {
    reads: ""
    ref: ""
    sample: ""
    cores: ""
  }
  output {
    File out_stdout = stdout()
  }
}