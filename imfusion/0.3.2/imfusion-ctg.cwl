#!/usr/bin/env cwl-runner

baseCommand:
- imfusion-ctg
class: CommandLineTool
cwlVersion: v1.0
id: imfusion-ctg
inputs:
- doc: Path to the merged insertions file from imfusion- merge.
  id: insertions
  inputBinding:
    prefix: --insertions
  type: string
- doc: Path to the reference genome sequence (in fasta format). Can either be the
    augmented reference genome or the original reference.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: IDs of genes to test.
  id: gene_ids
  inputBinding:
    prefix: --gene_ids
  type:
    items: string
    type: array
- doc: Path for the output CTG file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Minimum corrected p-value for CTGs. (Default = 0.01).
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: Regular expression reflecting the nucleotide sequence at which the use transposon
    typically integrates (if any). Used to correct for sequence integration biases
    along the genome. For example the pattern (AT|TA) is used for the T2onc2 transposon,
    which is biased towards integrations as TA sites.
  id: pattern
  inputBinding:
    prefix: --pattern
  type: string
- doc: WINDOW Window around the gene within which we test a given gene for enrichment
    in insertions.
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: Chromosomes to consider. Used to omit specific chromosomes from the CTG analysis.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: Minimum supporting number of reads for insertions to be included in the CTG
    analysis. Can be used to omit insertions with low support for more confidence
    in the analysis.
  id: min_depth
  inputBinding:
    prefix: --min_depth
  type: long
- doc: Path to the merged expression file from imfusion- merge.
  id: expression
  inputBinding:
    prefix: --expression
  type: string
- doc: Minimum p-value for a CTG to be considered as differentially expressed.
  id: de_threshold
  inputBinding:
    prefix: --de_threshold
  type: string
