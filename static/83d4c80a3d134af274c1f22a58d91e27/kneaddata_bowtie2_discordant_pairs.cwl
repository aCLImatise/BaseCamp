class: CommandLineTool
id: kneaddata_bowtie2_discordant_pairs.cwl
inputs:
- id: in_un_pair
  doc: "--un-single UN_SINGLE --al-single\nAL_SINGLE [-U ORPHAN] [-S SAM]\n[--bowtie2\
    \ BOWTIE2]\n[--threads THREADS]\n[--bowtie2-options BOWTIE2_OPTIONS]\n[--cat-pairs]\
    \ [--reorder]"
  type: long
  inputBinding:
    prefix: --un-pair
- id: in_one
  doc: the fastq file of pair1 reads
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: the fastq file of pair2 reads
  type: long
  inputBinding:
    prefix: '-2'
- id: in_database_index_file
  doc: the database index file
  type: File
  inputBinding:
    prefix: -x
- id: in_un_single
  doc: the name of the output files for the orphan reads without alignments
  type: string
  inputBinding:
    prefix: --un-single
- id: in_al_single
  doc: the name of the output files for the orphan reads with alignments
  type: string
  inputBinding:
    prefix: --al-single
- id: in_fastq_files_orphan
  doc: the fastq files of orphan reads in comma-delimited list
  type: string
  inputBinding:
    prefix: -U
- id: in_file_write_output
  doc: the file to write the sam output
  type: File
  inputBinding:
    prefix: -S
- id: in_bowtie_two
  doc: the path to the bowtie2 executable
  type: long
  inputBinding:
    prefix: --bowtie2
- id: in_threads
  doc: the number of threads to use
  type: long
  inputBinding:
    prefix: --threads
- id: in_bowtie_two_options
  doc: the bowtie2 options to apply
  type: long
  inputBinding:
    prefix: --bowtie2-options
- id: in_cat_pairs
  doc: concatenate pair files before aligning so reads are aligned as single end
  type: boolean
  inputBinding:
    prefix: --cat-pairs
- id: in_reorder
  doc: print the sequences in the same order as the input files
  type: boolean
  inputBinding:
    prefix: --reorder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_output
  doc: the file to write the sam output
  type: File
  outputBinding:
    glob: $(inputs.in_file_write_output)
cwlVersion: v1.1
baseCommand:
- kneaddata_bowtie2_discordant_pairs
