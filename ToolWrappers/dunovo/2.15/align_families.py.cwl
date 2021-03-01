class: CommandLineTool
id: align_families.py.cwl
inputs:
- id: in_aligner
  doc: "The multiple sequence aligner to use. Default:\nkalign"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_no_check_ids
  doc: Don't check to make sure read pairs have identical ids. By default, if this
    encounters a pair of reads in families.tsv with ids that aren't identical (minus
    an ending /1 or /2), it will throw an error.
  type: boolean?
  inputBinding:
    prefix: --no-check-ids
- id: in_processes
  doc: "Number of worker subprocesses to use. If 0, no\nsubprocesses will be started\
    \ and everything\nwill be done inside one process. Give \"auto\"\nto use as many\
    \ processes as there are CPU\ncores. Default: 0."
  type: long?
  inputBinding:
    prefix: --processes
- id: in_queue_size
  doc: "How long to go accumulating responses from\nworker subprocesses before dealing\
    \ with all of\nthem. Default: 8 * the number of worker\n--processes."
  type: long?
  inputBinding:
    prefix: --queue-size
- id: in_phone_home
  doc: "Report helpful usage data to the developer, to\nbetter understand the use\
    \ cases and\nperformance of the tool. The only data which\nwill be recorded is\
    \ the name and version of\nthe tool, the size of the input data, the time\nand\
    \ memory taken to process it, and the IP\naddress of the machine running it. Also,\
    \ if\nthe script fails, it will report the name of\nthe exception thrown and the\
    \ line of code it\noccurred in. No filenames are sent, and the\nonly parameters\
    \ reported are --aligner,\n--processes, and --queue-size, which are\nnecessary\
    \ to evaluate performance. All the\nreporting and recording code is available\
    \ at\nhttps://github.com/NickSto/ET."
  type: boolean?
  inputBinding:
    prefix: --phone-home
- id: in_galaxy
  doc: "Tell the script it's running on Galaxy.\nCurrently this only affects data\
    \ reported when\nphoning home."
  type: boolean?
  inputBinding:
    prefix: --galaxy
- id: in_test
  doc: If reporting usage data, mark this as a test
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_log_file
  doc: "Print log messages to this file instead of to\nstderr. NOTE: Will overwrite\
    \ the file."
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_read_families_dot_tsv
  doc: "The input reads, sorted into families. One\nline per read pair, 8 tab-delimited\
    \ columns:\n1. canonical barcode\n2. barcode order (\"ab\" for alpha+beta, \"\
    ba\"\nfor beta-alpha)\n3. read 1 name\n4. read 1 sequence\n5. read 1 quality scores\n\
    6. read 2 name\n7. read 2 sequence\n8. read 2 quality scores"
  type: string
  inputBinding:
    position: 0
- id: in_run_dot
  doc: --version             Print the version number and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- align-families.py
