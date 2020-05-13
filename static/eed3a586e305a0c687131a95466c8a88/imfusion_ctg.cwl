class: CommandLineTool
id: imfusion_ctg.cwl
inputs:
- id: insertions
  doc: Path to the merged insertions file from imfusion- merge.
  type: string
  inputBinding:
    prefix: --insertions
- id: reference
  doc: Path to the reference genome sequence (in fasta format). Can either be the
    augmented reference genome or the original reference.
  type: string
  inputBinding:
    prefix: --reference
- id: gene_ids
  doc: IDs of genes to test.
  type: string[]
  inputBinding:
    prefix: --gene_ids
- id: output
  doc: Path for the output CTG file.
  type: string
  inputBinding:
    prefix: --output
- id: threshold
  doc: Minimum corrected p-value for CTGs. (Default = 0.01).
  type: string
  inputBinding:
    prefix: --threshold
- id: pattern
  doc: Regular expression reflecting the nucleotide sequence at which the use transposon
    typically integrates (if any). Used to correct for sequence integration biases
    along the genome. For example the pattern (AT|TA) is used for the T2onc2 transposon,
    which is biased towards integrations as TA sites.
  type: string
  inputBinding:
    prefix: --pattern
- id: window
  doc: WINDOW Window around the gene within which we test a given gene for enrichment
    in insertions.
  type: string
  inputBinding:
    prefix: --window
- id: chromosomes
  doc: Chromosomes to consider. Used to omit specific chromosomes from the CTG analysis.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: min_depth
  doc: Minimum supporting number of reads for insertions to be included in the CTG
    analysis. Can be used to omit insertions with low support for more confidence
    in the analysis.
  type: long
  inputBinding:
    prefix: --min_depth
- id: expression
  doc: Path to the merged expression file from imfusion- merge.
  type: string
  inputBinding:
    prefix: --expression
- id: de_threshold
  doc: Minimum p-value for a CTG to be considered as differentially expressed.
  type: string
  inputBinding:
    prefix: --de_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- imfusion-ctg
