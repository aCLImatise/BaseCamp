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
    docker: "None"
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