class: CommandLineTool
id: join_homolog_genes.py.cwl
inputs:
- id: input_1
  doc: The first input file containing homolog genes (generated using find_homolog_genes.py).
  type: string
  inputBinding:
    prefix: --input_1
- id: input_2
  doc: The second input file containing homolog genes (generated using find_homolog_genes.py).
  type: string
  inputBinding:
    prefix: --input_2
- id: output
  doc: The output text tab-separated file containing the candidate homologous genes
    (the genes are sorted alphabetically on the each line).
  type: string
  inputBinding:
    prefix: --output
- id: rest
  doc: The output text tab-separated file containing the candidate homologous genes
    (the genes are sorted alphabetically on the each line) which were found to have
    less reads than the threshold specified using --reads.
  type: string
  inputBinding:
    prefix: --rest
- id: all
  doc: The output text tab-separated file containing all candidate homologous genes
    (the genes are sorted alphabetically on the each line) and the corresponding counts
    of ambiguous reads.
  type: string
  inputBinding:
    prefix: --all
- id: reads
  doc: The minimum number of reads which map simultaneously on two genes in order
    to be considered as homolog genes (after the joining is done). Default is 1.
  type: string
  inputBinding:
    prefix: --reads
outputs: []
cwlVersion: v1.1
baseCommand:
- join_homolog_genes.py
