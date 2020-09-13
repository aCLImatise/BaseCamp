version 1.0

task Imfusionexpression {
  input {
    String? reference
    File? sample_dir
    String? var_output
    Boolean? paired
    String? stranded
  }
  command <<<
    imfusion_expression \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sample_dir) then ("--sample_dir " +  '"' + sample_dir + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""}
  >>>
  parameter_meta {
    reference: "[--output OUTPUT] [--paired]"
    sample_dir: "Path to sample directory (typically the output of\\nimfusion-insertions)."
    var_output: ""
    paired: "Generate counts by counting fragments instead of reads\\n(for paired-end data)."
    stranded: "Strandedness of the RNA-seq data.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_sample_dir = "${in_sample_dir}"
  }
}