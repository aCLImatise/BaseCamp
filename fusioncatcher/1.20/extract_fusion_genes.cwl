class: CommandLineTool
id: extract_fusion_genes.py.cwl
inputs:
- id: input
  doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'label_fusion_genes.py'.
  type: string
  inputBinding:
    prefix: --input
- id: input_fusion_reads
  doc: The input file in text tab delimited format containing the fusion genes and
    supporting reads produced by find_fusion_genes_map.py.
  type: string
  inputBinding:
    prefix: --input_fusion_reads
- id: threshold_pairs
  doc: The threshold for the number of paired-end reads necessary for considering
    the fusion gene candidate for further analysis. All gene fusions candidate with
    a larger and equal number of supporting paired-end reads are written in the output
    file. Default value is 3.
  type: string
  inputBinding:
    prefix: --threshold_pairs
- id: threshold_pairs_known
  doc: The threshold for the number of paired-end reads necessary for considering
    the fusion gene candidate, which was labeled using '--allowed_labels', for further
    analysis. All gene fusions candidate with a larger and equal number of supporting
    paired-end reads are written in the output file. Default value is 0.
  type: string
  inputBinding:
    prefix: --threshold_pairs_known
- id: threshold_count
  doc: If --threshold_pairs selects more fusions than this threshold than this threshold
    will have priority (only the first top N will be selected). Default value is 5000.
  type: string
  inputBinding:
    prefix: --threshold_count
- id: skip_labels
  doc: A fusion gene candidate which has been labeled in the input file with one of
    the following labels is skipped and not written in the output file. Default value
    is 'paralog'.
  type: string
  inputBinding:
    prefix: --skip_labels
- id: allowed_labels
  doc: A fusion gene candidate which has been labeled in the input file with one of
    the following labels is considered for further analysis even if it has labels
    which disqualify it (from the --skipp_labels). Default value is 'known'.
  type: string
  inputBinding:
    prefix: --allowed_labels
- id: further_labels
  doc: A fusion gene candidate which has been labeled in the input file with one of
    the following labels is considered for further analysis even if it has labels
    which disqualify it (from the --skipp_labels) or is below the threshold. Default
    value is 'further_fusion'.
  type: string
  inputBinding:
    prefix: --further_labels
- id: output
  doc: The text tab separated file containing the fusion genes candidates which meet
    the conditions imposed by options '--threshold' and '--skip_labels' are written.
  type: string
  inputBinding:
    prefix: --output
- id: output_fusion
  doc: The same file as the input file where and extra column is added for the genes
    which have been selected for further analysis.
  type: string
  inputBinding:
    prefix: --output_fusion
- id: output_fusion_reads
  doc: The file containing the supporting reads which supports the gene considered
    for further analysis.
  type: string
  inputBinding:
    prefix: --output_fusion_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_fusion_genes.py
