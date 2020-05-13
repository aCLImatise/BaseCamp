class: CommandLineTool
id: bs_seeker2_align.py.cwl
inputs:
- id: input
  doc: 'Input read file (FORMAT: sequences, qseq, fasta, fastq). Ex: read.fa or read.fa.gz'
  type: string
  inputBinding:
    prefix: --input
- id: mini_ns
  doc: 'The minimum insert size for valid paired-end alignments [Default: 0]'
  type: long
  inputBinding:
    prefix: --minins
- id: max_ins
  doc: 'The maximum insert size for valid paired-end alignments [Default: 500]'
  type: long
  inputBinding:
    prefix: --maxins
- id: rrbs
  doc: Map reads to the Reduced Representation genome
  type: boolean
  inputBinding:
    prefix: --rrbs
- id: cut_site
  doc: 'Cutting sites of restriction enzyme. Ex: MspI(C-CGG), Mael:(C-TAG), double-enzyme
    MspI&Mael:(C-CGG,C-TAG). [Default: C-CGG]'
  type: string
  inputBinding:
    prefix: --cut-site
- id: low
  doc: 'Lower bound of fragment length (excluding C-CGG ends) [Default: 20]'
  type: string
  inputBinding:
    prefix: --low
- id: up
  doc: 'Upper bound of fragment length (excluding C-CGG ends) [Default: 500]'
  type: string
  inputBinding:
    prefix: --up
- id: tag
  doc: '[Y]es for undirectional lib, [N]o for directional [Default: N]'
  type: string
  inputBinding:
    prefix: --tag
- id: start_base
  doc: 'The first cycle of the read to be mapped [Default: 1]'
  type: string
  inputBinding:
    prefix: --start_base
- id: end_base
  doc: 'The last cycle of the read to be mapped [Default: 200]'
  type: string
  inputBinding:
    prefix: --end_base
- id: adapter
  doc: Input text file of your adaptor sequences (to be trimmed from the 3'end of
    the reads, ). Input one seq for dir. lib., twon seqs for undir. lib. One line
    per sequence. Only the first 10bp will be used
  type: File
  inputBinding:
    prefix: --adapter
- id: am
  doc: 'Number of mismatches allowed in adapter [Default: 0]'
  type: string
  inputBinding:
    prefix: --am
- id: genome
  doc: Name of the reference genome (should be the same as "-f" in bs_seeker2-build.py
    ) [ex. chr21_hg18.fa]
  type: string
  inputBinding:
    prefix: --genome
- id: mismatches
  doc: 'Number(>=1)/Percentage([0, 1)) of mismatches in one read. Ex: 4 (allow 4 mismatches)
    or 0.04 (allow 4% mismatches) [Default: 4]'
  type: string
  inputBinding:
    prefix: --mismatches
- id: aligner
  doc: 'Aligner program for short reads mapping: bowtie, bowtie2, soap, rmap [Default:
    bowtie]'
  type: string
  inputBinding:
    prefix: --aligner
- id: path
  doc: 'Path to the aligner program. Detected: bowtie: None bowtie2: /tmp/tmp6_ed8_xm/bin
    rmap: None soap: None'
  type: File
  inputBinding:
    prefix: --path
- id: db
  doc: 'Path to the reference genome library (generated in preprocessing genome) [Default:
    /tmp/tmp6_ed8_xm/bin/bs_utils/reference_genomes]'
  type: string
  inputBinding:
    prefix: --db
- id: split_line
  doc: 'Number of lines per split (the read file will be split into small files for
    mapping. The result will be merged. [Default: 4000000]'
  type: long
  inputBinding:
    prefix: --split_line
- id: output
  doc: The name of output file [INFILE.bs(se|pe|rrbs)]
  type: string
  inputBinding:
    prefix: --output
- id: output_format
  doc: 'Output format: bam, sam, bs_seeker1 [Default: bam]'
  type: string
  inputBinding:
    prefix: --output-format
- id: no_header
  doc: 'Suppress SAM header lines [Default: False]'
  type: boolean
  inputBinding:
    prefix: --no-header
- id: temp_dir
  doc: 'The path to your temporary directory [Detected: /tmp]'
  type: File
  inputBinding:
    prefix: --temp_dir
- id: xs
  doc: 'Filter definition for tag XS, format X,Y. X=0.8 and y=5 indicate that for
    one read, if #(mCH sites)/#(all CH sites)>0.8 and #(mCH sites)>5, then tag XS:i:1;
    or else tag XS:i:0. [Default: 0.5,5]'
  type: string
  inputBinding:
    prefix: --XS
- id: x_steve
  doc: Filter definition for tag XS, proposed by Prof. Steve Jacobsen, reads with
    at least 3 successive mCHH will be labeled as XS:i:1,useful for plant genome,
    which have high mCHG level. Will override --XS option.
  type: boolean
  inputBinding:
    prefix: --XSteve
- id: multiple_hit
  doc: File to store reads with multiple-hits
  type: File
  inputBinding:
    prefix: --multiple-hit
- id: unmapped
  doc: File to store unmapped reads
  type: File
  inputBinding:
    prefix: --unmapped
outputs: []
cwlVersion: v1.1
baseCommand:
- bs_seeker2-align.py
