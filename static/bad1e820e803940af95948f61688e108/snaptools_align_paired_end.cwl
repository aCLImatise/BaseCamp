class: CommandLineTool
id: ../../../snaptools_align_paired_end.cwl
inputs:
- id: input_reference
  doc: 'reference genome file contains the reference genome that reads are mapped
    against, the genome index must be under the same folder (default: None)'
  type: string
  inputBinding:
    prefix: --input-reference
- id: input_fast_q_one
  doc: 'fastq file contains R1 reads, currently supports fastq, gz, bz2 file (default:
    None)'
  type: string
  inputBinding:
    prefix: --input-fastq1
- id: input_fast_q_two
  doc: 'fastq file contains R2 reads, currently supports fastq, gz, bz2 file (default:
    None)'
  type: string
  inputBinding:
    prefix: --input-fastq2
- id: output_bam
  doc: 'output bam file contains unfiltered alignments (default: None)'
  type: string
  inputBinding:
    prefix: --output-bam
- id: aligner
  doc: 'aligner to use. Currently, snaptools supports bwa, bowtie, bowtie2 and minimap2.
    (default: bwa)'
  type: string
  inputBinding:
    prefix: --aligner
- id: path_to_aligner
  doc: 'path to fold that contains bwa (default: None)'
  type: File
  inputBinding:
    prefix: --path-to-aligner
- id: aligner_options
  doc: 'list of strings indicating options you would like passed to alignerstrongly
    do not recommand to change unless you know what you are doing. the default is
    to align reads without filteration. (default: None)'
  type: string[]
  inputBinding:
    prefix: --aligner-options
- id: read_fast_q_command
  doc: 'command line to execute for each of the input file. This command should generate
    FASTQ text and send it to stdout. For example, --read-fastq-command should be
    zcat, bzcat and cat for .gz, .bz2 and plain fastq file respectively (default:
    None)'
  type: string
  inputBinding:
    prefix: --read-fastq-command
- id: min_cov
  doc: 'min number of fragments per barcode. barcodes of total fragments less than
    --min-cov will be filreted before alingment. Note: though this feature is included,
    we found it barely benefit anything, recommand to set it 0. (default: 0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: num_threads
  doc: 'number of alignment threads, also number of threads for sorting a bam file.
    (default: 1)'
  type: string
  inputBinding:
    prefix: --num-threads
- id: if_sort
  doc: 'weather to sort the bam file based on the read name (default: True)'
  type: string
  inputBinding:
    prefix: --if-sort
- id: tmp_folder
  doc: 'directory to store temporary files. If not given, snaptools will automaticallygenerate
    a temporary location to store temporary files (default: None)'
  type: string
  inputBinding:
    prefix: --tmp-folder
- id: overwrite
  doc: 'whether to overwrite the output file if it already exists (default: False)'
  type: string
  inputBinding:
    prefix: --overwrite
- id: verbose
  doc: 'a boolen tag indicates output the progress. (default: True)'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- align-paired-end
