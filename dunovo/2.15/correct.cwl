class: CommandLineTool
id: correct.py.cwl
inputs:
- id: families
  doc: "The sorted output of make-barcodes.awk. The important part is that it's a\
    \ tab-delimited file with at least 2 columns: the barcode sequence and order,\
    \ and it must be sorted in the same order as the \"reads\" in the SAM file."
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The fasta/q file given to the aligner. Used to get barcode sequences from read
    names.
  type: string
  inputBinding:
    position: 1
- id: sam
  doc: Barcode alignment, in SAM format. Omit to read from stdin. The read names must
    be integers, representing the (1-based) order they appear in the families file.
  type: string
  inputBinding:
    position: 2
- id: debug
  doc: Print debug messages (very verbose).
  type: boolean
  inputBinding:
    prefix: --debug
- id: phone_home
  doc: Report helpful usage data to the developer, to better understand the use cases
    and performance of the tool. The only data which will be recorded is the name
    and version of the tool, the size of the input data, the time and memory taken
    to process it, and the IP address of the machine running it. Also, if the script
    fails, it will report the name of the exception thrown and the line of code it
    occurred in. No parameters or filenames are sent. All the reporting and recording
    code is available at https://github.com/NickSto/ET.
  type: boolean
  inputBinding:
    prefix: --phone-home
- id: galaxy
  doc: Tell the script it's running on Galaxy. Currently this only affects data reported
    when phoning home.
  type: boolean
  inputBinding:
    prefix: --galaxy
- id: test
  doc: If reporting usage data, mark this as a test run.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- correct.py
