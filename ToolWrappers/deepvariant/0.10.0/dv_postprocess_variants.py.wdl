version 1.0

task DvPostprocessVariantspy {
  input {
    String? outfile
    File? in_file
    String? ref
  }
  command <<<
    dv_postprocess_variants_py \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: ""
    in_file: ""
    ref: ""
  }
  output {
    File out_stdout = stdout()
  }
}