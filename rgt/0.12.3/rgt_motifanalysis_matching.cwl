class: CommandLineTool
id: rgt_motifanalysis_matching.cwl
inputs:
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
