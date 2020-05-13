class: CommandLineTool
id: snaptools_align_single_end.cwl
inputs:
- id: input_reference
  doc: 'reference genome file contains the reference genome that reads are mapped
    against, the genome index must be under the same folder (default: None)'
  type: string
  inputBinding:
    prefix: --input-reference
- id: input_fastq1
  doc: 'fastq file contains R1 reads, currently supports fastq, gz, bz2 file (default:
    None)'
  type: string
  inputBinding:
    prefix: --input-fastq1
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
    do not recommand to change unless you know what you are doing. (default: None)'
  type: string[]
  inputBinding:
    prefix: --aligner-options
- id: read_fast_q_command
  doc: 'command line to execute for each of the input file. This commandshould generate
    FASTA or FASTQ text and send it to stdout (default: None)'
  type: string
  inputBinding:
    prefix: --read-fastq-command
- id: num_threads
  doc: 'number of alignment threads (default: 1)'
  type: string
  inputBinding:
    prefix: --num-threads
- id: min_cov
  doc: 'min number of fragments per barcode. barcodes of total fragments less than
    --min-cov will be filreted before alingment. Note: though this feature is included,
    we found it barely speed up the process, so recommand to set it to be 0. (default:
    0)'
  type: long
  inputBinding:
    prefix: --min-cov
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
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- align-single-end
