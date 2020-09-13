class: CommandLineTool
id: ../../../snaptools_align_paired_end.cwl
inputs:
- id: in_input_fast_q_one
  doc: ''
  type: long
  inputBinding:
    prefix: --input-fastq1
- id: in_input_reference
  doc: "reference genome file contains the reference genome\nthat reads are mapped\
    \ against, the genome index must\nbe under the same folder (default: None)"
  type: File
  inputBinding:
    prefix: --input-reference
- id: in_output_bam
  doc: "output bam file contains unfiltered alignments\n(default: None)"
  type: File
  inputBinding:
    prefix: --output-bam
- id: in_aligner
  doc: "aligner to use. Currently, snaptools supports bwa,\nbowtie, bowtie2 and minimap2.\
    \ (default: bwa)"
  type: long
  inputBinding:
    prefix: --aligner
- id: in_path_to_aligner
  doc: 'path to fold that contains bwa (default: None)'
  type: File
  inputBinding:
    prefix: --path-to-aligner
- id: in_aligner_options
  doc: "list of strings indicating options you would like\npassed to alignerstrongly\
    \ do not recommand to change\nunless you know what you are doing. the default\
    \ is to\nalign reads without filteration. (default: None)"
  type: string[]
  inputBinding:
    prefix: --aligner-options
- id: in_read_fast_q_command
  doc: "command line to execute for each of the input file.\nThis command should generate\
    \ FASTQ text and send it to\nstdout. For example, --read-fastq-command should\
    \ be\nzcat, bzcat and cat for .gz, .bz2 and plain fastq file\nrespectively (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --read-fastq-command
- id: in_min_cov
  doc: "min number of fragments per barcode. barcodes of total\nfragments less than\
    \ --min-cov will be filreted before\nalingment. Note: though this feature is included,\
    \ we\nfound it barely benefit anything, recommand to set it\n0. (default: 0)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_num_threads
  doc: "number of alignment threads, also number of threads\nfor sorting a bam file.\
    \ (default: 1)"
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_if_sort
  doc: "weather to sort the bam file based on the read name\n(default: True)"
  type: File
  inputBinding:
    prefix: --if-sort
- id: in_tmp_folder
  doc: "directory to store temporary files. If not given,\nsnaptools will automaticallygenerate\
    \ a temporary\nlocation to store temporary files (default: None)"
  type: Directory
  inputBinding:
    prefix: --tmp-folder
- id: in_overwrite
  doc: "whether to overwrite the output file if it already\nexists (default: False)"
  type: File
  inputBinding:
    prefix: --overwrite
- id: in_verbose
  doc: "a boolen tag indicates output the progress. (default:\nTrue)\n"
  type: string
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bam
  doc: "output bam file contains unfiltered alignments\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_bam)
- id: out_overwrite
  doc: "whether to overwrite the output file if it already\nexists (default: False)"
  type: File
  outputBinding:
    glob: $(inputs.in_overwrite)
cwlVersion: v1.1
baseCommand:
- snaptools
- align-paired-end
