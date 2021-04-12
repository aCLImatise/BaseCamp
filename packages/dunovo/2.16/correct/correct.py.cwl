class: CommandLineTool
id: correct.py.cwl
inputs:
- id: in_prepend
  doc: "Prepend the corrected barcodes and orders to the\noriginal columns."
  type: boolean?
  inputBinding:
    prefix: --prepend
- id: in_dist
  doc: 'NM edit distance threshold. Default: 1'
  type: long?
  inputBinding:
    prefix: --dist
- id: in_mapq
  doc: 'MAPQ threshold. Default: 20'
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_pos
  doc: "POS tolerance. Alignments will be ignored if abs(POS -\n1) is greater than\
    \ this value. Set to greater than the\nbarcode length for no threshold. Default:\
    \ 2"
  type: long?
  inputBinding:
    prefix: --pos
- id: in_choose_by
  doc: "Choose the \"correct\" barcode in a network of related\nbarcodes by either\
    \ the count of how many times the\nbarcode was observed (\"freq\") or how connected\
    \ the\nbarcode is to the others in the network (\"connect\")."
  type: string?
  inputBinding:
    prefix: --choose-by
- id: in_no_check_ids
  doc: "Don't check to make sure read pairs have identical\nids. By default, if this\
    \ encounters a pair of reads in\nfamilies.tsv with ids that aren't identical (minus\
    \ an\nending /1 or /2), it will throw an error."
  type: boolean?
  inputBinding:
    prefix: --no-check-ids
- id: in_limit
  doc: "Limit the number of lines that will be read from each\ninput file, for testing\
    \ purposes."
  type: long?
  inputBinding:
    prefix: --limit
- id: in_structures
  doc: Print a list of the unique isoforms
  type: boolean?
  inputBinding:
    prefix: --structures
- id: in_struct_human
  doc: "[networks.png], --visualize [networks.png]\nProduce a visualization of the\
    \ unique structures and\nwrite the image to this file. If you omit a filename,\n\
    it will be displayed in a window."
  type: boolean?
  inputBinding:
    prefix: --struct-human
- id: in_viz_format
  doc: "Print log messages to this file instead of to stderr.\nWarning: Will overwrite\
    \ the file."
  type: string?
  inputBinding:
    prefix: --viz-format
- id: in_verbose
  doc: Print debug messages (very verbose).
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_phone_home
  doc: "Report helpful usage data to the developer, to better\nunderstand the use\
    \ cases and performance of the tool.\nThe only data which will be recorded is\
    \ the name and\nversion of the tool, the size of the input data, the\ntime and\
    \ memory taken to process it, and the IP\naddress of the machine running it. Also,\
    \ if the script\nfails, it will report the name of the exception thrown\nand the\
    \ line of code it occurred in. No parameters or\nfilenames are sent. All the reporting\
    \ and recording\ncode is available at https://github.com/NickSto/ET."
  type: boolean?
  inputBinding:
    prefix: --phone-home
- id: in_galaxy
  doc: "Tell the script it's running on Galaxy. Currently this\nonly affects data\
    \ reported when phoning home."
  type: boolean?
  inputBinding:
    prefix: --galaxy
- id: in_test
  doc: If reporting usage data, mark this as a test run.
  type: boolean?
  inputBinding:
    prefix: --test
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- correct.py
