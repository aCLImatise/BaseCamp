version 1.0

task RgtmotifanalysisEnrichment {
  input {
    Directory? organism
    Directory? matching_location
    File? use_only_motifs
    File? input_matrix
    Float? multiple_test_alpha
    Array[File] motif_dbs
    String? filter
    String? filter_type
    Boolean? logo_copy
    Boolean? logo_embed
    Int? promoter_length
    Int? maximum_association_length
    Boolean? exclude_target_genes
    File? output_location
    Float? print_thresh
    Boolean? big_bed
    String background_dot_bed
    String input_dot_bed
  }
  command <<<
    rgt_motifanalysis enrichment \
      ~{background_dot_bed} \
      ~{input_dot_bed} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(matching_location) then ("--matching-location " +  '"' + matching_location + '"') else ""} \
      ~{if defined(use_only_motifs) then ("--use-only-motifs " +  '"' + use_only_motifs + '"') else ""} \
      ~{if defined(input_matrix) then ("--input-matrix " +  '"' + input_matrix + '"') else ""} \
      ~{if defined(multiple_test_alpha) then ("--multiple-test-alpha " +  '"' + multiple_test_alpha + '"') else ""} \
      ~{if defined(motif_dbs) then ("--motif-dbs " +  '"' + motif_dbs + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(filter_type) then ("--filter-type " +  '"' + filter_type + '"') else ""} \
      ~{if (logo_copy) then "--logo-copy" else ""} \
      ~{if (logo_embed) then "--logo-embed" else ""} \
      ~{if defined(promoter_length) then ("--promoter-length " +  '"' + promoter_length + '"') else ""} \
      ~{if defined(maximum_association_length) then ("--maximum-association-length " +  '"' + maximum_association_length + '"') else ""} \
      ~{if (exclude_target_genes) then "--exclude-target-genes" else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(print_thresh) then ("--print-thresh " +  '"' + print_thresh + '"') else ""} \
      ~{if (big_bed) then "--bigbed" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19\\nor hg38."
    matching_location: "Directory where the matching output containing the\\nMPBS files resides. Defaults to 'match' in the current\\ndirectory."
    use_only_motifs: "Only use the motifs contained within this file (one\\nfor each line)."
    input_matrix: "If an experimental matrix is provided, the input\\narguments will be ignored."
    multiple_test_alpha: "Alpha value for multiple test."
    motif_dbs: "New 'motif DB' folders to use instead of the ones\\nwithin the RGTDATA folder. Each folder must contain\\nPWM files."
    filter: "List of key-value patterns to select a subset of TFs\\nusing the metadata (MTF files), e.g. for Mouse and\\nHuman on Selex data use:\\n\\\"species:sapiens,mus;data_source:selex\\\". NB: the\\nDATABASE values must be written in full - exact\\nmatching is always performed.Valid key types are\\n\\\"name\\\", \\\"gene_names\\\", \\\"family\\\", \\\"uniprot_ids\\\",\\n\\\"data_source\\\", \\\"tax_group\\\", \\\"species\\\", \\\"database\\\",\\n\\\"name_file\\\" and \\\"gene_names_file\\\""
    filter_type: "Only useful together with the --filter argument.Exact\\nwill only match perfect matching of the value for each\\nkey. Inexact will match in case the value pattern is\\ncontained within the motif. Regex allows for a more\\ncomplex pattern use."
    logo_copy: "The logos are copied to a local directory. The HTML\\nreport will contain relative paths to this directory."
    logo_embed: "The logos are embedded directly into the HTML report."
    promoter_length: "Length of the promoter region (in bp) to be extracted\\nfrom each gene."
    maximum_association_length: "Maximum distance between a coordinate and a gene (in\\nbp) in order for the former to be considered\\nassociated with the latter."
    exclude_target_genes: "If set the specified target genes areexcluded from\\nbackground file"
    output_location: "Path where the output MPBS files will be written.\\nDefaults to 'enrichment' in the current directory."
    print_thresh: "Only MPBSs whose factor's enrichment corrected p-value\\nare less than equal this option are printed. Use 1.0\\nto print all MPBSs."
    big_bed: "If this option is used, all bed files will be written\\nas bigbed.\\n"
    background_dot_bed: "BED file containing background regions."
    input_dot_bed: "BED files to be enriched against the background."
  }
  output {
    File out_stdout = stdout()
    Directory out_matching_location = "${in_matching_location}"
    File out_output_location = "${in_output_location}"
  }
}