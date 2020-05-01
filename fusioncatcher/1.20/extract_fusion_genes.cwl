#!/usr/bin/env cwl-runner

baseCommand:
- extract_fusion_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: extract_fusion_genes.py
inputs:
- doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'label_fusion_genes.py'.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input file in text tab delimited format containing the fusion genes and
    supporting reads produced by find_fusion_genes_map.py.
  id: input_fusion_reads
  inputBinding:
    prefix: --input_fusion_reads
  type: string
- doc: The threshold for the number of paired-end reads necessary for considering
    the fusion gene candidate for further analysis. All gene fusions candidate with
    a larger and equal number of supporting paired-end reads are written in the output
    file. Default value is 3.
  id: threshold_pairs
  inputBinding:
    prefix: --threshold_pairs
  type: string
- doc: The threshold for the number of paired-end reads necessary for considering
    the fusion gene candidate, which was labeled using '--allowed_labels', for further
    analysis. All gene fusions candidate with a larger and equal number of supporting
    paired-end reads are written in the output file. Default value is 0.
  id: threshold_pairs_known
  inputBinding:
    prefix: --threshold_pairs_known
  type: string
- doc: If --threshold_pairs selects more fusions than this threshold than this threshold
    will have priority (only the first top N will be selected). Default value is 5000.
  id: threshold_count
  inputBinding:
    prefix: --threshold_count
  type: string
- doc: A fusion gene candidate which has been labeled in the input file with one of
    the following labels is skipped and not written in the output file. Default value
    is 'paralog'.
  id: skip_labels
  inputBinding:
    prefix: --skip_labels
  type: string
- doc: A fusion gene candidate which has been labeled in the input file with one of
    the following labels is considered for further analysis even if it has labels
    which disqualify it (from the --skipp_labels). Default value is 'known'.
  id: allowed_labels
  inputBinding:
    prefix: --allowed_labels
  type: string
- doc: A fusion gene candidate which has been labeled in the input file with one of
    the following labels is considered for further analysis even if it has labels
    which disqualify it (from the --skipp_labels) or is below the threshold. Default
    value is 'further_fusion'.
  id: further_labels
  inputBinding:
    prefix: --further_labels
  type: string
- doc: The text tab separated file containing the fusion genes candidates which meet
    the conditions imposed by options '--threshold' and '--skip_labels' are written.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The same file as the input file where and extra column is added for the genes
    which have been selected for further analysis.
  id: output_fusion
  inputBinding:
    prefix: --output_fusion
  type: string
- doc: The file containing the supporting reads which supports the gene considered
    for further analysis.
  id: output_fusion_reads
  inputBinding:
    prefix: --output_fusion_reads
  type: string
