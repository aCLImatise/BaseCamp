class: CommandLineTool
id: itsxpress.cwl
inputs:
- id: in_fast_q
  doc: "A .fastq, .fq, .fastq.gz or .fq.gz file. Interleaved\nor not."
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_single_end
  doc: "A flag to specify that the FASTQ file is single-ended\n(not paired). Default\
    \ is false."
  type: boolean?
  inputBinding:
    prefix: --single_end
- id: in_fast_q_two
  doc: "A .fastq, .fq, .fastq.gz or .fq.gz file. representing\nread 2 (optional)"
  type: long?
  inputBinding:
    prefix: --fastq2
- id: in_outfile
  doc: "the trimmed Fastq file, if it ends in 'gz' it will be\ngzipped"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_outfile_two
  doc: "the trimmed read 2 Fastq file, if it ends in 'gz' it\nwill be gzipped. If\
    \ provided, reads will be returned\nunmerged."
  type: long?
  inputBinding:
    prefix: --outfile2
- id: in_tempdir
  doc: The temp file directory
  type: File?
  inputBinding:
    prefix: --tempdir
- id: in_keep_temp
  doc: Should intermediate files be kept?
  type: boolean?
  inputBinding:
    prefix: --keeptemp
- id: in_region
  doc: The taxonomic group sequenced.
  type: string?
  inputBinding:
    prefix: --region
- id: in_cluster_id
  doc: "The percent identity for clustering reads range\n[0.99-1.0], set to 1 for\
    \ exact dereplication."
  type: double?
  inputBinding:
    prefix: --cluster_id
- id: in_reversed_primers
  doc: "Primers are in reverse orientation as in Taylor et al.\n2016, DOI:10.1128/AEM.02576-16.\
    \ If selected ITSxpress\nreturns trimmed reads flipped to the forward\norientation"
  type: boolean?
  inputBinding:
    prefix: --reversed_primers
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_threads
  doc: Number of processor threads to use.
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- itsxpress
