class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rgt_motifanalysis_matching.cwl
inputs:
- id: organism
  doc: Organism considered on the analysis. Must have been setup in the RGTDATA folder.
    Common choices are hg19 or hg38.
  type: string
  inputBinding:
    prefix: --organism
- id: fpr
  doc: False positive rate cutoff.
  type: double
  inputBinding:
    prefix: --fpr
- id: pseudo_counts
  doc: Pseudocounts to be added to raw counts of each PFM.
  type: double
  inputBinding:
    prefix: --pseudocounts
- id: rand_proportion
  doc: If set, a random regions file will be created (eg, for later enrichment analysis).
    The number of coordinates will be equal to this value times the size of the inputregions.
    We advise you use a value of at least 10.
  type: double
  inputBinding:
    prefix: --rand-proportion
- id: norm_threshold
  doc: If this option is used, the thresholds for all PWMs will be normalized by their
    length. In this scheme, the threshold cutoff is evaluated in the regular way by
    the given fpr. Then, all thresholds are divided by the length of the motif. The
    final threshold consists of the average between all normalized motif thresholds.
    This single threshold will be applied to all motifs.
  type: boolean
  inputBinding:
    prefix: --norm-threshold
- id: motif_dbs
  doc: New 'motif DB' folders to use instead of the ones within the RGTDATA folder.
    Each folder must contain PWM files.
  type: File[]
  inputBinding:
    prefix: --motif-dbs
- id: remove_strand_duplicates
  doc: "Certain motifs are 'palindromic', or more specifically they have a palindromic\
    \ consensus sequence. When this happens, the output MPBS file will have duplicates:\
    \ same chromosome and initial and final position, but opposing strand. Select\
    \ this option to only retain the 'strand duplicate' with the highest score. Duplicates\
    \ due to overlapping input regions are NOT affected by this."
  type: boolean
  inputBinding:
    prefix: --remove-strand-duplicates
- id: rmd_up
  doc: Remove any duplicate region from the input BED files.
  type: boolean
  inputBinding:
    prefix: --rmdup
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
- id: input_matrix
  doc: The experimental matrix allows the specification of gene-association rules
    among input files (see online documentation for details).
  type: string
  inputBinding:
    prefix: --input-matrix
- id: promoters_only
  doc: If you ONLY want to perform promoter matching without providing any input file/matrix.
    If --target-genes is not provided, then all available promoters will be matched
    against. Note how this makes '--make- background' redundant.
  type: boolean
  inputBinding:
    prefix: --promoters-only
- id: input_files
  doc: BED files to perform motif matching on.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: target_genes
  doc: List of genes (one per line) to get the promoter regions from.
  type: File
  inputBinding:
    prefix: --target-genes
- id: make_background
  doc: If set, it will perform motif matching on the 'background regions', composed
    of the promoters of all available genes (minus the target genes, if specified).
    It doesn't require --target-genes.
  type: boolean
  inputBinding:
    prefix: --make-background
- id: promoter_length
  doc: Length of the promoter region (in bp) to be extracted from each gene.
  type: long
  inputBinding:
    prefix: --promoter-length
- id: output_location
  doc: Path where the output MPBS files will be written. Defaults to 'match' in the
    current directory.
  type: File
  inputBinding:
    prefix: --output-location
- id: big_bed
  doc: If this option is used, all bed files will be written as bigbed.
  type: boolean
  inputBinding:
    prefix: --bigbed
- id: normalize_bit_score
  doc: In order to print bigbed files the scores need to be normalized between 0 and
    1000. Don't use this option if real bitscores should be printed in the resulting
    bed file. Without this option, bigbed files will never be created.
  type: boolean
  inputBinding:
    prefix: --normalize-bitscore
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-motifanalysis
- matching
