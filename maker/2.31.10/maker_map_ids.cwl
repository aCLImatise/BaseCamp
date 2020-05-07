class: CommandLineTool
id: maker_map_ids.cwl
inputs:
- id: prefix
  doc: The prefix to use for all IDs (default = 'MAKER_')
  type: boolean
  inputBinding:
    prefix: --prefix
- id: suffix
  doc: A suffix to use for all transcript IDs (default = '-R'). Specifying --suffix
    will also turn on --iterate.
  type: boolean
  inputBinding:
    prefix: --suffix
- id: initial
  doc: The initial value to start with for ID count. If --initial is supplied more
    than once than the first value will be used for genes and the second for transcripts
    (default = 1)
  type: boolean
  inputBinding:
    prefix: --initial
- id: ab_rv_gene
  doc: Optional abreviation added to IDs for genes (i.e. = 'G')
  type: boolean
  inputBinding:
    prefix: --abrv_gene
- id: ab_rv_tran
  doc: Optioanl abreviation added to IDs for transcripts (i.e. = 'T')
  type: boolean
  inputBinding:
    prefix: --abrv_tran
- id: iterate
  doc: Transcript iteration to add to IDs. Value can be '0', '1', or 'A', i.e. mRNA-0
    or mRNA-1 or mRNA-A (default = 'A')
  type: boolean
  inputBinding:
    prefix: --iterate
- id: justify
  doc: The unique integer portion of the ID will be right justified with '0's to this
    length (default = 8)
  type: boolean
  inputBinding:
    prefix: --justify
- id: sort_order
  doc: 'A tab delimited file containing two columns: contig_id and sort_order.  Genes
    and transcripts will be named in consecutive order along the contigs, and the
    contigs will be sorted in the order specified by the file.  If sort_order is not
    given and there are ##sequence-region directives at the top of the gff file then
    naming will be ordered by decreasing contig length.'
  type: boolean
  inputBinding:
    prefix: --sort_order
outputs: []
cwlVersion: v1.1
baseCommand:
- maker_map_ids
