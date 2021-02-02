class: CommandLineTool
id: imfusion_ctg.cwl
inputs:
- id: in_insertions
  doc: "Path to the merged insertions file from imfusion-\nmerge."
  type: File
  inputBinding:
    prefix: --insertions
- id: in_reference
  doc: "Path to the reference genome sequence (in fasta\nformat). Can either be the\
    \ augmented reference genome\nor the original reference."
  type: File
  inputBinding:
    prefix: --reference
- id: in_gene_ids
  doc: IDs of genes to test.
  type: string[]
  inputBinding:
    prefix: --gene_ids
- id: in_output
  doc: Path for the output CTG file.
  type: File
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: Minimum corrected p-value for CTGs. (Default = 0.01).
  type: double
  inputBinding:
    prefix: --threshold
- id: in_pattern
  doc: "Regular expression reflecting the nucleotide sequence\nat which the use transposon\
    \ typically integrates (if\nany). Used to correct for sequence integration biases\n\
    along the genome. For example the pattern (AT|TA) is\nused for the T2onc2 transposon,\
    \ which is biased\ntowards integrations as TA sites."
  type: long
  inputBinding:
    prefix: --pattern
- id: in_window
  doc: "WINDOW\nWindow around the gene within which we test a given\ngene for enrichment\
    \ in insertions."
  type: string
  inputBinding:
    prefix: --window
- id: in_chromosomes
  doc: "Chromosomes to consider. Used to omit specific\nchromosomes from the CTG analysis."
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_min_depth
  doc: "Minimum supporting number of reads for insertions to\nbe included in the CTG\
    \ analysis. Can be used to omit\ninsertions with low support for more confidence\
    \ in the\nanalysis."
  type: long
  inputBinding:
    prefix: --min_depth
- id: in_expression
  doc: "Path to the merged expression file from imfusion-\nmerge."
  type: File
  inputBinding:
    prefix: --expression
- id: in_de_threshold
  doc: "Minimum p-value for a CTG to be considered as\ndifferentially expressed.\n"
  type: string
  inputBinding:
    prefix: --de_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path for the output CTG file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- imfusion-ctg
