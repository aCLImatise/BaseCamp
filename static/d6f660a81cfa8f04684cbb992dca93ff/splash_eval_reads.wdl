version 1.0

task SplashEvalreads {
  input {
    File? output_file
    File? bed
    File? reference
  }
  command <<<
    splash eval_reads \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    output_file: ""
    bed: "BED file"
    reference: "Reference fasta file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}