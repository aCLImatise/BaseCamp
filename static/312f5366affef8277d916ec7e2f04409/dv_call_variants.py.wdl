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
  parameter_meta {
    examples: ""
    outfile: ""
    cores: ""
  }
  output {
    File out_stdout = stdout()
  }
}