class: CommandLineTool
id: mprobability.cwl
inputs:
- id: in_assembly
  doc: "The reference sequence from which the reads are\nsupposed to have been generated"
  type: File
  inputBinding:
    prefix: --assembly
- id: in_accuracy
  doc: "The probability that a base is read accurately\n(default=0.98)"
  type: double
  inputBinding:
    prefix: --accuracy
- id: in_delta_std_dev
  doc: "The number of standard deviations to include when\ncalculating the separation\
    \ region probability\n(default=3)"
  type: long
  inputBinding:
    prefix: --delta-std-dev
- id: in_reads_format
  doc: "The format ('fasta' or 'fastq') of the file\ncontaining the reads (default=fastq)"
  type: File
  inputBinding:
    prefix: --reads-format
- id: in_no_seeds
  doc: "Do not use seeds to speed up the calculations. Use\nfull dynamic programming.\
    \ This is very slow"
  type: boolean
  inputBinding:
    prefix: --no-seeds
- id: in_print_headers
  doc: Print the header of each read before its
  type: boolean
  inputBinding:
    prefix: --print-headers
- id: in_seed_length
  doc: The length of the exact seeds (default=30)
  type: long
  inputBinding:
    prefix: --seed-length
- id: in_separation_mean
  doc: "The mean length of the separation between the\npaired reads"
  type: long
  inputBinding:
    prefix: --separation-mean
- id: in_separation_std_dev
  doc: "The standard deviation of the mean length of the\nseparation"
  type: long
  inputBinding:
    prefix: --separation-std-dev
- id: in_use_mates
  doc: Calculate mate-pair probability.
  type: boolean
  inputBinding:
    prefix: --use-mates
- id: in_probability
  doc: -p, --num-threads=THREADS  The number of pthreads to use.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mprobability
