class: CommandLineTool
id: rgt_motifanalysis_enrichment.cwl
inputs:
- id: organism
  doc: Organism considered on the analysis. Must have been setup in the RGTDATA folder.
    Common choices are hg19 or hg38.
  type: string
  inputBinding:
    prefix: --organism
- id: matching_location
  doc: Directory where the matching output containing the MPBS files resides. Defaults
    to 'match' in the current directory.
  type: File
  inputBinding:
    prefix: --matching-location
- id: use_only_motifs
  doc: Only use the motifs contained within this file (one for each line).
  type: File
  inputBinding:
    prefix: --use-only-motifs
- id: input_matrix
  doc: If an experimental matrix is provided, the input arguments will be ignored.
  type: File
  inputBinding:
    prefix: --input-matrix
- id: multiple_test_alpha
  doc: Alpha value for multiple test.
  type: double
  inputBinding:
    prefix: --multiple-test-alpha
- id: motif_dbs
  doc: New 'motif DB' folders to use instead of the ones within the RGTDATA folder.
    Each folder must contain PWM files.
  type: File[]
  inputBinding:
    prefix: --motif-dbs
- id: filter
  doc: 'List of key-value patterns to select a subset of TFs using the metadata (MTF
    files), e.g. for Mouse and Human on Selex data use: "species:sapiens,mus;data_source:selex".
    NB: the DATABASE values must be written in full - exact matching is always performed.Valid
    key types are "name", "gene_names", "family", "uniprot_ids", "data_source", "tax_group",
    "species", "database", "name_file" and "gene_names_file"'
  type: string
  inputBinding:
    prefix: --filter
- id: filter_type
  doc: Only useful together with the --filter argument.Exact will only match perfect
    matching of the value for each key. Inexact will match in case the value pattern
    is contained within the motif. Regex allows for a more complex pattern use.
  type: string
  inputBinding:
    prefix: --filter-type
- id: logo_copy
  doc: The logos are copied to a local directory. The HTML report will contain relative
    paths to this directory.
  type: boolean
  inputBinding:
    prefix: --logo-copy
- id: logo_embed
  doc: The logos are embedded directly into the HTML report.
  type: boolean
  inputBinding:
    prefix: --logo-embed
- id: promoter_length
  doc: Length of the promoter region (in bp) to be extracted from each gene.
  type: long
  inputBinding:
    prefix: --promoter-length
- id: maximum_association_length
  doc: Maximum distance between a coordinate and a gene (in bp) in order for the former
    to be considered associated with the latter.
  type: long
  inputBinding:
    prefix: --maximum-association-length
- id: exclude_target_genes
  doc: If set the specified target genes areexcluded from background file
  type: boolean
  inputBinding:
    prefix: --exclude-target-genes
- id: output_location
  doc: Path where the output MPBS files will be written. Defaults to 'enrichment'
    in the current directory.
  type: File
  inputBinding:
    prefix: --output-location
- id: print_thresh
  doc: Only MPBSs whose factor's enrichment corrected p-value are less than equal
    this option are printed. Use 1.0 to print all MPBSs.
  type: double
  inputBinding:
    prefix: --print-thresh
- id: big_bed
  doc: If this option is used, all bed files will be written as bigbed.
  type: boolean
  inputBinding:
    prefix: --bigbed
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-motifanalysis
- enrichment
