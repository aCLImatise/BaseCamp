#!/usr/bin/env cwl-runner

baseCommand:
- join_homolog_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: join_homolog_genes.py
inputs:
- doc: The first input file containing homolog genes (generated using find_homolog_genes.py).
  id: input_1
  inputBinding:
    prefix: --input_1
  type: string
- doc: The second input file containing homolog genes (generated using find_homolog_genes.py).
  id: input_2
  inputBinding:
    prefix: --input_2
  type: string
- doc: The output text tab-separated file containing the candidate homologous genes
    (the genes are sorted alphabetically on the each line).
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output text tab-separated file containing the candidate homologous genes
    (the genes are sorted alphabetically on the each line) which were found to have
    less reads than the threshold specified using --reads.
  id: rest
  inputBinding:
    prefix: --rest
  type: string
- doc: The output text tab-separated file containing all candidate homologous genes
    (the genes are sorted alphabetically on the each line) and the corresponding counts
    of ambiguous reads.
  id: all
  inputBinding:
    prefix: --all
  type: string
- doc: The minimum number of reads which map simultaneously on two genes in order
    to be considered as homolog genes (after the joining is done). Default is 1.
  id: reads
  inputBinding:
    prefix: --reads
  type: string
