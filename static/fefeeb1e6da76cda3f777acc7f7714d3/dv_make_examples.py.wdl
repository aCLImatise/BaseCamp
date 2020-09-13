version 1.0

task DvMakeExamplespy {
  input {
    String? examples
    Boolean? reads
    String? ref
    String? sample
    String? cores
  }
  command <<<
    dv_make_examples_py \
      ~{if defined(examples) then ("--examples " +  '"' + examples + '"') else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    examples: "[-h]"
    reads: ""
    ref: ""
    sample: ""
    cores: ""
  }
  output {
    File out_stdout = stdout()
  }
}