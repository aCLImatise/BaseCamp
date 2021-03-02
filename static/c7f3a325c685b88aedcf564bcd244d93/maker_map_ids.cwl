class: CommandLineTool
id: maker_map_ids.cwl
inputs:
- id: in_prefix
  doc: The prefix to use for all IDs (default = 'MAKER_')
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: "A suffix to use for all transcript IDs (default = '-R').\nSpecifying --suffix\
    \ will also turn on --iterate."
  type: boolean?
  inputBinding:
    prefix: --suffix
- id: in_initial
  doc: "The initial value to start with for ID count. If --initial\nis supplied more\
    \ than once than the first value will be used\nfor genes and the second for transcripts\
    \ (default = 1)"
  type: boolean?
  inputBinding:
    prefix: --initial
- id: in_ab_rv_gene
  doc: Optional abreviation added to IDs for genes (i.e. = 'G')
  type: boolean?
  inputBinding:
    prefix: --abrv_gene
- id: in_ab_rv_tran
  doc: Optioanl abreviation added to IDs for transcripts (i.e. = 'T')
  type: boolean?
  inputBinding:
    prefix: --abrv_tran
- id: in_iterate
  doc: "Transcript iteration to add to IDs. Value can be '0', '1',\nor 'A', i.e. mRNA-0\
    \ or mRNA-1 or mRNA-A (default = 'A')"
  type: boolean?
  inputBinding:
    prefix: --iterate
- id: in_justify
  doc: "The unique integer portion of the ID will be right justified\nwith '0's to\
    \ this length (default = 8)"
  type: boolean?
  inputBinding:
    prefix: --justify
- id: in_sort_order
  doc: "A tab delimited file containing two columns: contig_id\nand sort_order.  Genes\
    \ and transcripts will be named\nin consecutive order along the contigs, and the\n\
    contigs will be sorted in the order specified by the\nfile.  If sort_order is\
    \ not given and there are\n##sequence-region directives at the top of the gff\n\
    file then naming will be ordered by decreasing contig\nlength."
  type: boolean?
  inputBinding:
    prefix: --sort_order
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- maker_map_ids
