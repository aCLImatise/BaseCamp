version 1.0

task Imfusionexpression {
  input {
    String? reference
    Boolean? paired
    String? sample_dir
  }
  command <<<
    imfusion_expression \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(sample_dir) then ("--sample_dir " +  '"' + sample_dir + '"') else ""}
  >>>
  parameter_meta {
    reference: "[--output OUTPUT] [--paired]"
    paired: "Generate counts by counting fragments instead of reads"
    sample_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}