class: CommandLineTool
id: make_consensi.py.cwl
inputs:
- id: in_dcs_one
  doc: "The file to output the first mates of the\nduplex consensus sequences into.\
    \ Warning: This\nwill be overwritten if it exists!"
  type: File?
  inputBinding:
    prefix: --dcs1
- id: in_dcs_two
  doc: Same, but for mate 2.
  type: long?
  inputBinding:
    prefix: --dcs2
- id: in_sscs_one
  doc: "Save the single-strand consensus sequences\n(mate 1) in this file (FASTA format).\
    \ Warning:\nThis will be overwritten if it exists!"
  type: long?
  inputBinding:
    prefix: --sscs1
- id: in_sscs_two
  doc: "Save the single-strand consensus sequences\n(mate 2) in this file (FASTA format).\
    \ Warning:\nThis will be overwritten if it exists!"
  type: long?
  inputBinding:
    prefix: --sscs2
- id: in_qual_format
  doc: "FASTQ quality score format. Sanger scores are\nassumed to begin at '33' (!).\
    \ Default:\nsanger."
  type: string?
  inputBinding:
    prefix: --qual-format
- id: in_fast_q_out
  doc: "Output in FASTQ instead of FASTA. You must\nspecify the quality score to give\
    \ to all\nbases. There is no meaningful quality score we\ncan automatically give,\
    \ so you will have to\nspecify an artificial one. A good choice is\n40, the maximum\
    \ score normally output by\nsequencers."
  type: long?
  inputBinding:
    prefix: --fastq-out
- id: in_min_reads
  doc: "The minimum number of reads (from each strand)\nrequired to form a single-strand\
    \ consensus.\nStrands with fewer reads will be skipped.\nDefault: 3."
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_qual
  doc: "Base quality threshold. Bases below this\nquality will not be counted. Default:\n\
    20."
  type: long?
  inputBinding:
    prefix: --qual
- id: in_cons_th_res
  doc: "The fractional threshold to use when making\nconsensus sequences. The consensus\
    \ base must\nbe present in more than this fraction of the\nreads, or N will be\
    \ used as the consensus base\ninstead. Default: 0.5"
  type: double?
  inputBinding:
    prefix: --cons-thres
- id: in_min_cons_reads
  doc: "The absolute threshold to use when making\nconsensus sequences. The consensus\
    \ base must\nbe present in more than this number of reads,\nor N will be used\
    \ as the consensus base\ninstead. Default: 0"
  type: long?
  inputBinding:
    prefix: --min-cons-reads
- id: in_phone_home
  doc: "Report helpful usage data to the developer, to\nbetter understand the use\
    \ cases and\nperformance of the tool. The only data which\nwill be recorded is\
    \ the name and version of\nthe tool, the size of the input data, the time\nand\
    \ memory taken to process it, and the IP\naddress of the machine running it. Also,\
    \ if\nthe script fails, it will report the name of\nthe exception thrown and the\
    \ line of code it\noccurred in. No filenames are sent, and the\nonly parameters\
    \ reported are the number of\n--processes and the --queue-size. All the\nreporting\
    \ and recording code is available at\nhttps://github.com/NickSto/ET."
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
- id: in_log
  doc: "Print log messages to this file instead of to\nstderr. Warning: Will overwrite\
    \ the file."
  type: File?
  inputBinding:
    prefix: --log
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
- id: in_families_dot_msa_dot_tsv
  doc: "The output of align_families.py. 6 columns:\n1. (canonical) barcode\n2. order\
    \ (\"ab\" or \"ba\")\n3. mate (\"1\" or \"2\")\n4. read name\n5. aligned sequence\n\
    6. aligned quality scores."
  type: string
  inputBinding:
    position: 0
- id: in_run_dot
  doc: 'Logging:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dcs_one
  doc: "The file to output the first mates of the\nduplex consensus sequences into.\
    \ Warning: This\nwill be overwritten if it exists!"
  type: File?
  outputBinding:
    glob: $(inputs.in_dcs_one)
hints: []
cwlVersion: v1.1
baseCommand:
- make-consensi.py
