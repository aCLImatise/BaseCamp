class: CommandLineTool
id: make_consensi.py.cwl
inputs:
- id: in_dcs_one
  doc: 'The file to output the first mates of the duplex consensus sequences into.
    Warning: This will be overwritten if it exists!'
  type: File?
  inputBinding:
    prefix: --dcs1
- id: in_dcs_two
  doc: Same, but for mate 2.
  type: long?
  inputBinding:
    prefix: --dcs2
- id: in_sscs_one
  doc: 'Save the single-strand consensus sequences (mate 1) in this file (FASTA format).
    Warning: This will be overwritten if it exists!'
  type: long?
  inputBinding:
    prefix: --sscs1
- id: in_sscs_two
  doc: 'Save the single-strand consensus sequences (mate 2) in this file (FASTA format).
    Warning: This will be overwritten if it exists!'
  type: long?
  inputBinding:
    prefix: --sscs2
- id: in_qual_format
  doc: "FASTQ quality score format. Sanger scores are assumed to begin at '33' (!).\
    \ Default: sanger."
  type: string?
  inputBinding:
    prefix: --qual-format
- id: in_fast_q_out
  doc: Output in FASTQ instead of FASTA. You must specify the quality score to give
    to all bases. There is no meaningful quality score we can automatically give,
    so you will have to specify an artificial one. A good choice is 40, the maximum
    score normally output by sequencers.
  type: long?
  inputBinding:
    prefix: --fastq-out
- id: in_min_reads
  doc: 'The minimum number of reads (from each strand) required to form a single-strand
    consensus. Strands with fewer reads will be skipped. Default: 3.'
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_qual
  doc: 'Base quality threshold. Bases below this quality will not be counted. Default:
    20.'
  type: long?
  inputBinding:
    prefix: --qual
- id: in_cons_th_res
  doc: 'The fractional threshold to use when making consensus sequences. The consensus
    base must be present in more than this fraction of the reads, or N will be used
    as the consensus base instead. Default: 0.5'
  type: double?
  inputBinding:
    prefix: --cons-thres
- id: in_min_cons_reads
  doc: 'The absolute threshold to use when making consensus sequences. The consensus
    base must be present in more than this number of reads, or N will be used as the
    consensus base instead. Default: 0'
  type: long?
  inputBinding:
    prefix: --min-cons-reads
- id: in_phone_home
  doc: Report helpful usage data to the developer, to better understand the use cases
    and performance of the tool. The only data which will be recorded is the name
    and version of the tool, the size of the input data, the time and memory taken
    to process it, and the IP address of the machine running it. Also, if the script
    fails, it will report the name of the exception thrown and the line of code it
    occurred in. No filenames are sent, and the only parameters reported are the number
    of --processes and the --queue-size. All the reporting and recording code is available
    at https://github.com/NickSto/ET.
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
- id: in_log
  doc: 'Print log messages to this file instead of to stderr. Warning: Will overwrite
    the file.'
  type: File?
  inputBinding:
    prefix: --log
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
- id: in_families_dot_msa_dot_tsv
  doc: "The output of align_families.py. 6 columns:\n1. (canonical) barcode\n2. order\
    \ (\"ab\" or \"ba\")\n3. mate (\"1\" or \"2\")\n4. read name\n5. aligned sequence\n\
    6. aligned quality scores."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dcs_one
  doc: 'The file to output the first mates of the duplex consensus sequences into.
    Warning: This will be overwritten if it exists!'
  type: File?
  outputBinding:
    glob: $(inputs.in_dcs_one)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- make-consensi.py
