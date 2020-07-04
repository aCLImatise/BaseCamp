version 1.0

task RgtMotifanalysisEnrichment {
  input {
    String? organism
    File? matching_location
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
    rgt-motifanalysis enrichment \
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
      ~{true="--logo-copy" false="" logo_copy} \
      ~{true="--logo-embed" false="" logo_embed} \
      ~{if defined(promoter_length) then ("--promoter-length " +  '"' + promoter_length + '"') else ""} \
      ~{if defined(maximum_association_length) then ("--maximum-association-length " +  '"' + maximum_association_length + '"') else ""} \
      ~{true="--exclude-target-genes" false="" exclude_target_genes} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(print_thresh) then ("--print-thresh " +  '"' + print_thresh + '"') else ""} \
      ~{true="--bigbed" false="" big_bed}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been setup in the RGTDATA folder. Common choices are hg19 or hg38."
    matching_location: "Directory where the matching output containing the MPBS files resides. Defaults to 'match' in the current directory."
    use_only_motifs: "Only use the motifs contained within this file (one for each line)."
    input_matrix: "If an experimental matrix is provided, the input arguments will be ignored."
    multiple_test_alpha: "Alpha value for multiple test."
    motif_dbs: "New 'motif DB' folders to use instead of the ones within the RGTDATA folder. Each folder must contain PWM files."
    filter: "List of key-value patterns to select a subset of TFs using the metadata (MTF files), e.g. for Mouse and Human on Selex data use: \"species:sapiens,mus;data_source:selex\". NB: the DATABASE values must be written in full - exact matching is always performed.Valid key types are \"name\", \"gene_names\", \"family\", \"uniprot_ids\", \"data_source\", \"tax_group\", \"species\", \"database\", \"name_file\" and \"gene_names_file\""
    filter_type: "Only useful together with the --filter argument.Exact will only match perfect matching of the value for each key. Inexact will match in case the value pattern is contained within the motif. Regex allows for a more complex pattern use."
    logo_copy: "The logos are copied to a local directory. The HTML report will contain relative paths to this directory."
    logo_embed: "The logos are embedded directly into the HTML report."
    promoter_length: "Length of the promoter region (in bp) to be extracted from each gene."
    maximum_association_length: "Maximum distance between a coordinate and a gene (in bp) in order for the former to be considered associated with the latter."
    exclude_target_genes: "If set the specified target genes areexcluded from background file"
    output_location: "Path where the output MPBS files will be written. Defaults to 'enrichment' in the current directory."
    print_thresh: "Only MPBSs whose factor's enrichment corrected p-value are less than equal this option are printed. Use 1.0 to print all MPBSs."
    big_bed: "If this option is used, all bed files will be written as bigbed."
    background_dot_bed: "BED file containing background regions."
    input_dot_bed: "BED files to be enriched against the background."
  }
}