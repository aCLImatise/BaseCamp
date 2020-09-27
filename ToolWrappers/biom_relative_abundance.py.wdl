version 1.0

task BiomRelativeAbundancepy {
  input {
    File? input_biom_fp
    String? output_tsv_fp
    Boolean? stabilize_variance
  }
  command <<<
    biom_relative_abundance_py \
      ~{if defined(input_biom_fp) then ("--input_biom_fp " +  '"' + input_biom_fp + '"') else ""} \
      ~{if defined(output_tsv_fp) then ("--output_tsv_fp " +  '"' + output_tsv_fp + '"') else ""} \
      ~{if (stabilize_variance) then "--stabilize_variance" else ""}
  >>>
  parameter_meta {
    input_biom_fp: "BIOM file path."
    output_tsv_fp: "A TSV table of relative OTU abundance data."
    stabilize_variance: "Apply the variance-stabilizing arcsine square root\\ntransformation to the OTU proportion data.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}