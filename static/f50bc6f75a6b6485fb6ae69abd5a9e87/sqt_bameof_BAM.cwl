class: CommandLineTool
id: sqt_bameof_BAM.cwl
inputs:
- id: in_align
  doc: Compare two strings
  type: string
  inputBinding:
    position: 0
- id: in_bam_two_fast_q
  doc: "Extract all reads from a BAM file that map to a\ncertain location, but try\
    \ hard"
  type: long
  inputBinding:
    position: 1
- id: in_fast_xmod
  doc: "Modify FASTA and FASTQ files by picking subsets and\nmodifying individual\
    \ entries."
  type: string
  inputBinding:
    position: 2
- id: in_q_gram_freq
  doc: "Print q-gram (also called k-mer) frequencies in a\nFASTA or FASTQ file."
  type: string
  inputBinding:
    position: 3
- id: in_chars
  doc: Print the number of characters in a string.
  type: string
  inputBinding:
    position: 4
- id: in_fast_agrep
  doc: Search for a IUPAC string in the sequences of a FASTA
  type: string
  inputBinding:
    position: 5
- id: in_file_dot
  doc: readcov             Print a report for individual reads in a SAM/BAM file.
  type: File
  inputBinding:
    position: 6
- id: in_random_seq
  doc: Generate random sequences in FASTA format
  type: string
  inputBinding:
    position: 7
- id: in_sam_se_top
  doc: Perform set operation on two SAM/BAM files.
  type: string
  inputBinding:
    position: 8
- id: in_bame_of
  doc: Check whether the EOF marker is present in BAM files.
  type: string
  inputBinding:
    position: 9
- id: in_read_len_histo
  doc: "Print and optionally plot a read length histogram of\none or more FASTA or\
    \ FASTQ"
  type: string
  inputBinding:
    position: 10
- id: in_cut_vect
  doc: Remove vector sequence
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sqt
- bameof
- BAM
