class: CommandLineTool
id: bs_seeker2_align.py.cwl
inputs:
- id: in_input
  doc: "Input read file (FORMAT: sequences, qseq, fasta,\nfastq). Ex: read.fa or read.fa.gz"
  type: File?
  inputBinding:
    prefix: --input
- id: in_input_one
  doc: "Input read file, mate 1 (FORMAT: sequences, qseq,\nfasta, fastq)"
  type: File?
  inputBinding:
    prefix: --input_1
- id: in_input_two
  doc: "Input read file, mate 2 (FORMAT: sequences, qseq,\nfasta, fastq)"
  type: File?
  inputBinding:
    prefix: --input_2
- id: in_mini_ns
  doc: "The minimum insert size for valid paired-end\nalignments [Default: 0]"
  type: long?
  inputBinding:
    prefix: --minins
- id: in_max_ins
  doc: "The maximum insert size for valid paired-end\nalignments [Default: 500]"
  type: long?
  inputBinding:
    prefix: --maxins
- id: in_rrbs
  doc: Map reads to the Reduced Representation genome
  type: boolean?
  inputBinding:
    prefix: --rrbs
- id: in_cut_site
  doc: "Cutting sites of restriction enzyme. Ex: MspI(C-CGG),\nMael:(C-TAG), double-enzyme\
    \ MspI&Mael:(C-CGG,C-TAG).\n[Default: C-CGG]"
  type: string?
  inputBinding:
    prefix: --cut-site
- id: in_low
  doc: "Lower bound of fragment length (excluding C-CGG ends)\n[Default: 20]"
  type: long?
  inputBinding:
    prefix: --low
- id: in_up
  doc: "Upper bound of fragment length (excluding C-CGG ends)\n[Default: 500]"
  type: long?
  inputBinding:
    prefix: --up
- id: in_tag
  doc: "[Y]es for undirectional lib, [N]o for directional\n[Default: N]"
  type: string?
  inputBinding:
    prefix: --tag
- id: in_start_base
  doc: 'The first cycle of the read to be mapped [Default: 1]'
  type: long?
  inputBinding:
    prefix: --start_base
- id: in_end_base
  doc: 'The last cycle of the read to be mapped [Default: 200]'
  type: long?
  inputBinding:
    prefix: --end_base
- id: in_adapter
  doc: "Input text file of your adaptor sequences (to be\ntrimmed from the 3'end of\
    \ the reads, ). Input one seq\nfor dir. lib., twon seqs for undir. lib. One line\
    \ per\nsequence. Only the first 10bp will be used"
  type: File?
  inputBinding:
    prefix: --adapter
- id: in_am
  doc: 'Number of mismatches allowed in adapter [Default: 0]'
  type: long?
  inputBinding:
    prefix: --am
- id: in_genome
  doc: "Name of the reference genome (should be the same as\n\"-f\" in bs_seeker2-build.py\
    \ ) [ex. chr21_hg18.fa]"
  type: long?
  inputBinding:
    prefix: --genome
- id: in_mismatches
  doc: "Number(>=1)/Percentage([0, 1)) of mismatches in one\nread. Ex: 4 (allow 4\
    \ mismatches) or 0.04 (allow 4%\nmismatches) [Default: 4]"
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_aligner
  doc: "Aligner program for short reads mapping: bowtie,\nbowtie2, soap, rmap [Default:\
    \ bowtie]"
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_path
  doc: "Path to the aligner program. Detected:\nbowtie: None\nbowtie2: /usr/local/bin\n\
    rmap: None\nsoap: None"
  type: File?
  inputBinding:
    prefix: --path
- id: in_db
  doc: "Path to the reference genome library (generated in\npreprocessing genome)\
    \ [Default:\n/usr/local/bin/bs_utils/reference_genomes]"
  type: File?
  inputBinding:
    prefix: --db
- id: in_split_line
  doc: "Number of lines per split (the read file will be split\ninto small files for\
    \ mapping. The result will be\nmerged. [Default: 4000000]"
  type: long?
  inputBinding:
    prefix: --split_line
- id: in_output
  doc: The name of output file [INFILE.bs(se|pe|rrbs)]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_format
  doc: 'Output format: bam, sam, bs_seeker1 [Default: bam]'
  type: long?
  inputBinding:
    prefix: --output-format
- id: in_no_header
  doc: 'Suppress SAM header lines [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_temp_dir
  doc: 'The path to your temporary directory [Detected: /tmp]'
  type: File?
  inputBinding:
    prefix: --temp_dir
- id: in_xs
  doc: "Filter definition for tag XS, format X,Y. X=0.8 and\ny=5 indicate that for\
    \ one read, if #(mCH sites)/#(all\nCH sites)>0.8 and #(mCH sites)>5, then tag\
    \ XS:i:1; or\nelse tag XS:i:0. [Default: 0.5,5]"
  type: double?
  inputBinding:
    prefix: --XS
- id: in_x_steve
  doc: "Filter definition for tag XS, proposed by Prof. Steve\nJacobsen, reads with\
    \ at least 3 successive mCHH will\nbe labeled as XS:i:1,useful for plant genome,\
    \ which\nhave high mCHG level. Will override --XS option."
  type: boolean?
  inputBinding:
    prefix: --XSteve
- id: in_multiple_hit
  doc: File to store reads with multiple-hits
  type: File?
  inputBinding:
    prefix: --multiple-hit
- id: in_unmapped
  doc: File to store unmapped reads
  type: File?
  inputBinding:
    prefix: --unmapped
- id: in_bt_p
  doc: will increase the number of threads for bowtie to 4, --bt--
  type: long?
  inputBinding:
    prefix: --bt-p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The name of output file [INFILE.bs(se|pe|rrbs)]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bs_seeker2-align.py
