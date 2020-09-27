class: CommandLineTool
id: snaptools_align_single_end.cwl
inputs:
- id: in_input_fast_q_one
  doc: "OUTPUT_BAM [--aligner ALIGNER]\n[--path-to-aligner PATH_TO_ALIGNER]\n[--aligner-options\
    \ ALIGNER_OPTIONS [ALIGNER_OPTIONS ...]]\n[--read-fastq-command READ_FASTQ_COMMAND]\n\
    [--num-threads NUM_THREADS]\n[--min-cov MIN_COV] [--if-sort IF_SORT]\n[--tmp-folder\
    \ TMP_FOLDER]\n[--overwrite OVERWRITE]"
  type: long
  inputBinding:
    prefix: --input-fastq1
- id: in_input_reference
  doc: "reference genome file contains the reference genome\nthat reads are mapped\
    \ against, the genome index must\nbe under the same folder (default: None)"
  type: File
  inputBinding:
    prefix: --input-reference
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
    \ do not recommand to change\nunless you know what you are doing. (default: None)"
  type: string[]
  inputBinding:
    prefix: --aligner-options
- id: in_read_fast_q_command
  doc: "command line to execute for each of the input file.\nThis commandshould generate\
    \ FASTA or FASTQ text and\nsend it to stdout (default: None)"
  type: File
  inputBinding:
    prefix: --read-fastq-command
- id: in_num_threads
  doc: 'number of alignment threads (default: 1)'
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_min_cov
  doc: "min number of fragments per barcode. barcodes of total\nfragments less than\
    \ --min-cov will be filreted before\nalingment. Note: though this feature is included,\
    \ we\nfound it barely speed up the process, so recommand to\nset it to be 0. (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --min-cov
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
  doc: "whether to overwrite the output file if it already\nexists (default: False)\n"
  type: File
  inputBinding:
    prefix: --overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_overwrite
  doc: "whether to overwrite the output file if it already\nexists (default: False)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_overwrite)
cwlVersion: v1.1
baseCommand:
- snaptools
- align-single-end
