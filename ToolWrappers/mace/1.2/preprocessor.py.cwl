class: CommandLineTool
id: preprocessor.py.cwl
inputs:
- id: in_input_file
  doc: "Input file in BAM format. BAM file must be sorted and\nindexed using samTools.\
    \ Replicates separated by\ncomma(',') e.g. \"-i rep1.bam,rep2.bam,rep3.bam\""
  type: File
  inputBinding:
    prefix: --inputFile
- id: in_chrom_size
  doc: "Chromosome size file. Tab or space separated text file\nwith 2 columns: first\
    \ column is chromosome name,\nsecond column is size of the chromosome."
  type: long
  inputBinding:
    prefix: --chromSize
- id: in_out_prefix
  doc: "Prefix of output wig files(s). \"Prefix_Forward.wig\"\nand \"Prefix_Reverse.wig\"\
    \ will be generated"
  type: string
  inputBinding:
    prefix: --outPrefix
- id: in_km_er_size
  doc: "Kmer size [6,12] to correct nucleotide composition\nbias. kmerSize < 0.5*read_lenght.\
    \ larger KmerSize\nmight make program slower. Set kmerSize = 0 to turn\noff nucleotide\
    \ compsition bias correction. default=6"
  type: long
  inputBinding:
    prefix: --kmerSize
- id: in_bin
  doc: "Chromosome chunk size. Each chomosome will be cut into\nsmall chunks of this\
    \ size. Decrease chunk size will\nsave more RAM. default=100000 (bp)"
  type: long
  inputBinding:
    prefix: --bin
- id: in_depth
  doc: "Reference reads count (default = 10 million).\nSequencing depth will be normailzed\
    \ to this number, so\nthat wig files are comparable between replicates."
  type: long
  inputBinding:
    prefix: --depth
- id: in_q_cut
  doc: "phred scaled mapping quality threshhold to determine\n\"uniqueness\" of alignments.\
    \ default=30"
  type: long
  inputBinding:
    prefix: --qCut
- id: in_method
  doc: "methods (\"EM\", \"AM\", \"GM\", or \"SNR\") used to\nconsolidate replicates\
    \ and reduce noise. \"EM\" =\nEntropy weighted mean, \"AM\"=Arithmetic mean,\n\
    \"GM\"=Geometric mean, \"SNR\"=Signal-to-noise ratio.\ndefault=EM\n"
  type: string
  inputBinding:
    prefix: --method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- preprocessor.py
