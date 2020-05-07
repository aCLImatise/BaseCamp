class: CommandLineTool
id: enlarge_genes.py.cwl
inputs:
- id: enlargement_size
  doc: The size of the region, which will be used for enlarging the genes at 5'end
    and 3'end. One region will be added to the 5' end and a second one to the 3' end.
    Default is '5000'.
  type: long
  inputBinding:
    prefix: --enlargement-size
- id: genes
  doc: If this is specified then only the genes from this list will be enlarged/covered.
    If this is not specified then all the genes will be enlarged (only where is possible,
    for example the genes which overlaps each other will be skipped from enlarging).
    If the file is empty then no gene will be enlarged!
  type: string
  inputBinding:
    prefix: --genes
- id: full_cover
  doc: Genes having their lengths strictly less than this will have the enlargment
    done as one continuous region. For the rest of genes two regions will be added
    at the 5'end and 3'end of the gene. Default is '1000'.
  type: string
  inputBinding:
    prefix: --full-cover
- id: gene_short
  doc: Genes having their lengths strictly less than this will be skipped from the
    enlargement. Default is '200'.
  type: string
  inputBinding:
    prefix: --gene-short
- id: output
  doc: The output directory where the genes sequences are written. Default is 'none'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- enlarge_genes.py
