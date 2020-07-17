version 1.0

task ImfusionExpression {
  input {
    Boolean? paired
    String? stranded
    String? sample_dir
  }
  command <<<
    imfusion-expression \
      ~{true="--paired" false="" paired} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(sample_dir) then ("--sample_dir " +  '"' + sample_dir + '"') else ""}
  >>>
  parameter_meta {
    paired: "Generate counts by counting fragments instead of reads (for paired-end data)."
    stranded: "Strandedness of the RNA-seq data."
    sample_dir: ""
  }
}