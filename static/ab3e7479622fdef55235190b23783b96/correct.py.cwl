class: CommandLineTool
id: correct.py.cwl
inputs:
- id: in_families
  doc: "The sorted output of make-barcodes.awk. The important\npart is that it's a\
    \ tab-delimited file with at least 2\ncolumns: the barcode sequence and order,\
    \ and it must\nbe sorted in the same order as the \"reads\" in the SAM\nfile."
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: "The fasta/q file given to the aligner. Used to get\nbarcode sequences from\
    \ read names."
  type: string
  inputBinding:
    position: 1
- id: in_sam
  doc: "Barcode alignment, in SAM format. Omit to read from\nstdin. The read names\
    \ must be integers, representing\nthe (1-based) order they appear in the families\
    \ file."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- correct.py
