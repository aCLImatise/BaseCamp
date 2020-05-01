#!/usr/bin/env cwl-runner

baseCommand:
- enlarge_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: enlarge_genes.py
inputs:
- doc: The size of the region, which will be used for enlarging the genes at 5'end
    and 3'end. One region will be added to the 5' end and a second one to the 3' end.
    Default is '5000'.
  id: enlargement_size
  inputBinding:
    prefix: --enlargement-size
  type: long
- doc: If this is specified then only the genes from this list will be enlarged/covered.
    If this is not specified then all the genes will be enlarged (only where is possible,
    for example the genes which overlaps each other will be skipped from enlarging).
    If the file is empty then no gene will be enlarged!
  id: genes
  inputBinding:
    prefix: --genes
  type: string
- doc: Genes having their lengths strictly less than this will have the enlargment
    done as one continuous region. For the rest of genes two regions will be added
    at the 5'end and 3'end of the gene. Default is '1000'.
  id: full_cover
  inputBinding:
    prefix: --full-cover
  type: string
- doc: Genes having their lengths strictly less than this will be skipped from the
    enlargement. Default is '200'.
  id: gene_short
  inputBinding:
    prefix: --gene-short
  type: string
- doc: The output directory where the genes sequences are written. Default is 'none'.
  id: output
  inputBinding:
    prefix: --output
  type: string
