version 1.0

task MegalodonExtrasModifiedBasesSplitByMotif {
  input {
    Boolean? motif
    Directory? megalodon_directory
    Directory? output_suffix
    Directory? output_prefix
  }
  command <<<
    megalodon_extras modified_bases split_by_motif \
      ~{if (motif) then "--motif" else ""} \
      ~{if defined(megalodon_directory) then ("--megalodon-directory " +  '"' + megalodon_directory + '"') else ""} \
      ~{if defined(output_suffix) then ("--output-suffix " +  '"' + output_suffix + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0"
  }
  parameter_meta {
    motif: "['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\\nMotif description. Motifs include two values\\nspecifying the sequence motif (may include ambiguity\\ncodes) and the relative modified position. Multiple\\n`--motif` values may be provided."
    megalodon_directory: "Megalodon output directory containing per-read\\nmodified base database to be split. Default:\\nmegalodon_results"
    output_suffix: "Suffix to apply to log (stored in input directory).\\nDefault: split_by_motif"
    output_prefix: "Prefix for output directories. One directory will be\\ncreated for each motif with names [--output-\\nprefix].[--motif]. Default:\\nmegalodon_results.split_by_motif\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_megalodon_directory = "${in_megalodon_directory}"
    Directory out_output_prefix = "${in_output_prefix}"
  }
}