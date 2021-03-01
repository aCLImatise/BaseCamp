class: CommandLineTool
id: rgt_motifanalysis_enrichment.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Must have been\nsetup in the RGTDATA\
    \ folder. Common choices are hg19\nor hg38."
  type: Directory?
  inputBinding:
    prefix: --organism
- id: in_matching_location
  doc: "Directory where the matching output containing the\nMPBS files resides. Defaults\
    \ to 'match' in the current\ndirectory."
  type: Directory?
  inputBinding:
    prefix: --matching-location
- id: in_use_only_motifs
  doc: "Only use the motifs contained within this file (one\nfor each line)."
  type: File?
  inputBinding:
    prefix: --use-only-motifs
- id: in_input_matrix
  doc: "If an experimental matrix is provided, the input\narguments will be ignored."
  type: File?
  inputBinding:
    prefix: --input-matrix
- id: in_multiple_test_alpha
  doc: Alpha value for multiple test.
  type: double?
  inputBinding:
    prefix: --multiple-test-alpha
- id: in_motif_dbs
  doc: "New 'motif DB' folders to use instead of the ones\nwithin the RGTDATA folder.\
    \ Each folder must contain\nPWM files."
  type: File[]
  inputBinding:
    prefix: --motif-dbs
- id: in_filter
  doc: "List of key-value patterns to select a subset of TFs\nusing the metadata (MTF\
    \ files), e.g. for Mouse and\nHuman on Selex data use:\n\"species:sapiens,mus;data_source:selex\"\
    . NB: the\nDATABASE values must be written in full - exact\nmatching is always\
    \ performed.Valid key types are\n\"name\", \"gene_names\", \"family\", \"uniprot_ids\"\
    ,\n\"data_source\", \"tax_group\", \"species\", \"database\",\n\"name_file\" and\
    \ \"gene_names_file\""
  type: string?
  inputBinding:
    prefix: --filter
- id: in_filter_type
  doc: "Only useful together with the --filter argument.Exact\nwill only match perfect\
    \ matching of the value for each\nkey. Inexact will match in case the value pattern\
    \ is\ncontained within the motif. Regex allows for a more\ncomplex pattern use."
  type: string?
  inputBinding:
    prefix: --filter-type
- id: in_logo_copy
  doc: "The logos are copied to a local directory. The HTML\nreport will contain relative\
    \ paths to this directory."
  type: boolean?
  inputBinding:
    prefix: --logo-copy
- id: in_logo_embed
  doc: The logos are embedded directly into the HTML report.
  type: boolean?
  inputBinding:
    prefix: --logo-embed
- id: in_promoter_length
  doc: "Length of the promoter region (in bp) to be extracted\nfrom each gene."
  type: long?
  inputBinding:
    prefix: --promoter-length
- id: in_maximum_association_length
  doc: "Maximum distance between a coordinate and a gene (in\nbp) in order for the\
    \ former to be considered\nassociated with the latter."
  type: long?
  inputBinding:
    prefix: --maximum-association-length
- id: in_exclude_target_genes
  doc: "If set the specified target genes areexcluded from\nbackground file"
  type: boolean?
  inputBinding:
    prefix: --exclude-target-genes
- id: in_output_location
  doc: "Path where the output MPBS files will be written.\nDefaults to 'enrichment'\
    \ in the current directory."
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_print_thresh
  doc: "Only MPBSs whose factor's enrichment corrected p-value\nare less than equal\
    \ this option are printed. Use 1.0\nto print all MPBSs."
  type: double?
  inputBinding:
    prefix: --print-thresh
- id: in_big_bed
  doc: "If this option is used, all bed files will be written\nas bigbed.\n"
  type: boolean?
  inputBinding:
    prefix: --bigbed
- id: in_background_dot_bed
  doc: BED file containing background regions.
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bed
  doc: BED files to be enriched against the background.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_matching_location
  doc: "Directory where the matching output containing the\nMPBS files resides. Defaults\
    \ to 'match' in the current\ndirectory."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_matching_location)
- id: out_output_location
  doc: "Path where the output MPBS files will be written.\nDefaults to 'enrichment'\
    \ in the current directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_location)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-motifanalysis
- enrichment
