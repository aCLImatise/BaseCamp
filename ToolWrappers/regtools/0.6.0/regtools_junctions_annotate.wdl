version 1.0

task RegtoolsJunctionsAnnotate {
  input {
    String? single_exon_genes
    File? file_write_output
    String junctions_dot_bed
    String ref_dot_fa
    String annotations_dot_gtf
  }
  command <<<
    regtools junctions annotate \
      ~{junctions_dot_bed} \
      ~{ref_dot_fa} \
      ~{annotations_dot_gtf} \
      ~{if defined(single_exon_genes) then ("-S " +  '"' + single_exon_genes + '"') else ""} \
      ~{if defined(file_write_output) then ("-o " +  '"' + file_write_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    single_exon_genes: "single exon genes"
    file_write_output: "The file to write output to. [STDOUT]"
    junctions_dot_bed: ""
    ref_dot_fa: ""
    annotations_dot_gtf: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_output = "${in_file_write_output}"
  }
}