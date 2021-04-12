class: CommandLineTool
id: align_families.py.cwl
inputs:
- id: in_aligner
  doc: 'The multiple sequence aligner to use. Default: kalign'
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
  doc: 'Number of worker subprocesses to use. If 0, no subprocesses will be started
    and everything will be done inside one process. Give "auto" to use as many processes
    as there are CPU cores. Default: 0.'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_queue_size
  doc: 'How long to go accumulating responses from worker subprocesses before dealing
    with all of them. Default: 8 * the number of worker --processes.'
  type: long?
  inputBinding:
    prefix: --queue-size
- id: in_phone_home
  doc: Report helpful usage data to the developer, to better understand the use cases
    and performance of the tool. The only data which will be recorded is the name
    and version of the tool, the size of the input data, the time and memory taken
    to process it, and the IP address of the machine running it. Also, if the script
    fails, it will report the name of the exception thrown and the line of code it
    occurred in. No filenames are sent, and the only parameters reported are --aligner,
    --processes, and --queue-size, which are necessary to evaluate performance. All
    the reporting and recording code is available at https://github.com/NickSto/ET.
  type: boolean?
  inputBinding:
    prefix: --phone-home
- id: in_galaxy
  doc: Tell the script it's running on Galaxy. Currently this only affects data reported
    when phoning home.
  type: boolean?
  inputBinding:
    prefix: --galaxy
- id: in_test
  doc: If reporting usage data, mark this as a test run.
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_log_file
  doc: 'Print log messages to this file instead of to stderr. NOTE: Will overwrite
    the file.'
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_read_families_dot_tsv
  doc: "The input reads, sorted into families. One line per read pair, 8 tab-delimited\
    \ columns:\n1. canonical barcode\n2. barcode order (\"ab\" for alpha+beta, \"\
    ba\" for beta-alpha)\n3. read 1 name\n4. read 1 sequence\n5. read 1 quality scores\n\
    6. read 2 name\n7. read 2 sequence\n8. read 2 quality scores"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- align-families.py
