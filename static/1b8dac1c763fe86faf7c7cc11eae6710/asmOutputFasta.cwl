class: CommandLineTool
id: asmOutputFasta.cwl
inputs:
- id: in_write_files_named
  doc: "write files named 'prefix.XXX.TYPE', etc.\nXXX =  type of object\nutg - unitig\n\
    deg - degenerate\nctg - contig\nscf - scaffold\nTYPE = type of sequence\nfasta\
    \ - acgt bases\nqv    - Celera encoded quality values\nqual  - NCBI encoded quality\
    \ values"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_do_dump_unitigs
  doc: do NOT dump unitigs
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_do_dump_degenerates
  doc: do NOT dump degenerates
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_do_dump_contigs
  doc: do NOT dump contigs
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_do_dump_scaffolds
  doc: do NOT dump scaffolds
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_dump_only_unitigs
  doc: "dump only unitigs with at least nf reads\nin them.  Default is 0 (dump all\
    \ unitigs).\n"
  type: long?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- asmOutputFasta
