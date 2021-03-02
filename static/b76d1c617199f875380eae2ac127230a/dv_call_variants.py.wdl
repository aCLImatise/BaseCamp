version 1.0

task DvCallVariantspy {
  input {
    Boolean? examples
    String? outfile
    String? cores
  }
  command <<<
    dv_call_variants_py \
      ~{if (examples) then "--examples" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.0.0--py36hf5a246b_0"
  }
  parameter_meta {
    examples: ""
    outfile: ""
    cores: ""
  }
  output {
    File out_stdout = stdout()
  }
}