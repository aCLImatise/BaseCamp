class: CommandLineTool
id: kneaddata_bowtie2_discordant_pairs.cwl
inputs:
- id: x
  doc: the database index file
  type: string
  inputBinding:
    prefix: -x
- id: un_pair
  doc: the name of the output files for the paired reads without any alignments
  type: string
  inputBinding:
    prefix: --un-pair
- id: al_pair
  doc: the name of the output files for the paired reads with concordant alignments
  type: string
  inputBinding:
    prefix: --al-pair
- id: un_single
  doc: the name of the output files for the orphan reads without alignments
  type: string
  inputBinding:
    prefix: --un-single
- id: al_single
  doc: the name of the output files for the orphan reads with alignments
  type: string
  inputBinding:
    prefix: --al-single
- id: u
  doc: the fastq files of orphan reads in comma-delimited list
  type: string
  inputBinding:
    prefix: -U
- id: s
  doc: the file to write the sam output
  type: string
  inputBinding:
    prefix: -S
- id: bowtie2
  doc: the path to the bowtie2 executable
  type: string
  inputBinding:
    prefix: --bowtie2
- id: threads
  doc: the number of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: bowtie2_options
  doc: the bowtie2 options to apply
  type: string
  inputBinding:
    prefix: --bowtie2-options
- id: cat_pairs
  doc: concatenate pair files before aligning so reads are aligned as single end
  type: boolean
  inputBinding:
    prefix: --cat-pairs
- id: reorder
  doc: print the sequences in the same order as the input files
  type: boolean
  inputBinding:
    prefix: --reorder
outputs: []
cwlVersion: v1.1
baseCommand:
- kneaddata_bowtie2_discordant_pairs
