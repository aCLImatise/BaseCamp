class: CommandLineTool
id: rgt_motifanalysis_matching.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Must have been\nsetup in the RGTDATA\
    \ folder. Common choices are hg19\nor hg38."
  type: Directory
  inputBinding:
    prefix: --organism
- id: in_fpr
  doc: False positive rate cutoff.
  type: double
  inputBinding:
    prefix: --fpr
- id: in_pseudo_counts
  doc: Pseudocounts to be added to raw counts of each PFM.
  type: double
  inputBinding:
    prefix: --pseudocounts
- id: in_rand_proportion
  doc: "If set, a random regions file will be created (eg, for\nlater enrichment analysis).\
    \ The number of coordinates\nwill be equal to this value times the size of the\n\
    inputregions. We advise you use a value of at least\n10."
  type: double
  inputBinding:
    prefix: --rand-proportion
- id: in_norm_threshold
  doc: "If this option is used, the thresholds for all PWMs\nwill be normalized by\
    \ their length. In this scheme,\nthe threshold cutoff is evaluated in the regular\
    \ way\nby the given fpr. Then, all thresholds are divided by\nthe length of the\
    \ motif. The final threshold consists\nof the average between all normalized motif\n\
    thresholds. This single threshold will be applied to\nall motifs."
  type: boolean
  inputBinding:
    prefix: --norm-threshold
- id: in_motif_dbs
  doc: "New 'motif DB' folders to use instead of the ones\nwithin the RGTDATA folder.\
    \ Each folder must contain\nPWM files."
  type: File[]
  inputBinding:
    prefix: --motif-dbs
- id: in_remove_strand_duplicates
  doc: "Certain motifs are 'palindromic', or more specifically\nthey have a palindromic\
    \ consensus sequence. When this\nhappens, the output MPBS file will have duplicates:\n\
    same chromosome and initial and final position, but\nopposing strand. Select this\
    \ option to only retain the\n'strand duplicate' with the highest score. Duplicates\n\
    due to overlapping input regions are NOT affected by\nthis."
  type: boolean
  inputBinding:
    prefix: --remove-strand-duplicates
- id: in_rmd_up
  doc: Remove any duplicate region from the input BED files.
  type: boolean
  inputBinding:
    prefix: --rmdup
- id: in_filter
  doc: "List of key-value patterns to select a subset of TFs\nusing the metadata (MTF\
    \ files), e.g. for Mouse and\nHuman on Selex data use:\n\"species:sapiens,mus;data_source:selex\"\
    . NB: the\nDATABASE values must be written in full - exact\nmatching is always\
    \ performed.Valid key types are\n\"name\", \"gene_names\", \"family\", \"uniprot_ids\"\
    ,\n\"data_source\", \"tax_group\", \"species\", \"database\",\n\"name_file\" and\
    \ \"gene_names_file\""
  type: string
  inputBinding:
    prefix: --filter
- id: in_filter_type
  doc: "Only useful together with the --filter argument.Exact\nwill only match perfect\
    \ matching of the value for each\nkey. Inexact will match in case the value pattern\
    \ is\ncontained within the motif. Regex allows for a more\ncomplex pattern use."
  type: string
  inputBinding:
    prefix: --filter-type
- id: in_input_matrix
  doc: "The experimental matrix allows the specification of\ngene-association rules\
    \ among input files (see online\ndocumentation for details)."
  type: string
  inputBinding:
    prefix: --input-matrix
- id: in_promoters_only
  doc: "If you ONLY want to perform promoter matching without\nproviding any input\
    \ file/matrix. If --target-genes is\nnot provided, then all available promoters\
    \ will be\nmatched against. Note how this makes '--make-\nbackground' redundant."
  type: boolean
  inputBinding:
    prefix: --promoters-only
- id: in_input_files
  doc: BED files to perform motif matching on.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_target_genes
  doc: "List of genes (one per line) to get the promoter\nregions from."
  type: File
  inputBinding:
    prefix: --target-genes
- id: in_make_background
  doc: "If set, it will perform motif matching on the\n'background regions', composed\
    \ of the promoters of all\navailable genes (minus the target genes, if\nspecified).\
    \ It doesn't require --target-genes."
  type: boolean
  inputBinding:
    prefix: --make-background
- id: in_promoter_length
  doc: "Length of the promoter region (in bp) to be extracted\nfrom each gene."
  type: long
  inputBinding:
    prefix: --promoter-length
- id: in_output_location
  doc: "Path where the output MPBS files will be written.\nDefaults to 'match' in\
    \ the current directory."
  type: File
  inputBinding:
    prefix: --output-location
- id: in_big_bed
  doc: "If this option is used, all bed files will be written\nas bigbed."
  type: boolean
  inputBinding:
    prefix: --bigbed
- id: in_normalize_bit_score
  doc: "In order to print bigbed files the scores need to be\nnormalized between 0\
    \ and 1000. Don't use this option\nif real bitscores should be printed in the\
    \ resulting\nbed file. Without this option, bigbed files will never\nbe created.\n"
  type: boolean
  inputBinding:
    prefix: --normalize-bitscore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_location
  doc: "Path where the output MPBS files will be written.\nDefaults to 'match' in\
    \ the current directory."
  type: File
  outputBinding:
    glob: $(inputs.in_output_location)
cwlVersion: v1.1
baseCommand:
- rgt-motifanalysis
- matching
