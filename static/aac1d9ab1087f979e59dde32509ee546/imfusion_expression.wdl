version 1.0

task Imfusionexpression {
  input {
    File? sample_dir
    File? reference
    String? generate_counts_pairedend
    String? stranded
  }
  command <<<
    imfusion_expression \
      ~{if defined(sample_dir) then ("--sample_dir " +  '"' + sample_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(generate_counts_pairedend) then ("--output " +  '"' + generate_counts_pairedend + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_dir: "Path to sample directory (typically the output of\\nimfusion-insertions)."
    reference: "Path to the index of the augmented reference generated\\nby imfusion-build."
    generate_counts_pairedend: "Generate counts by counting fragments instead of reads\\n(for paired-end data)."
    stranded: "Strandedness of the RNA-seq data.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_sample_dir = "${in_sample_dir}"
  }
}