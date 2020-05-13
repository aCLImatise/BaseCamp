class: CommandLineTool
id: preprocessor.py.cwl
inputs:
- id: input_file
  doc: Input file in BAM format. BAM file must be sorted and indexed using samTools.
    Replicates separated by comma(',') e.g. "-i rep1.bam,rep2.bam,rep3.bam"
  type: string
  inputBinding:
    prefix: --inputFile
- id: chrom_size
  doc: 'Chromosome size file. Tab or space separated text file with 2 columns: first
    column is chromosome name, second column is size of the chromosome.'
  type: string
  inputBinding:
    prefix: --chromSize
- id: out_prefix
  doc: Prefix of output wig files(s). "Prefix_Forward.wig" and "Prefix_Reverse.wig"
    will be generated
  type: string
  inputBinding:
    prefix: --outPrefix
- id: km_er_size
  doc: Kmer size [6,12] to correct nucleotide composition bias. kmerSize < 0.5*read_lenght.
    larger KmerSize might make program slower. Set kmerSize = 0 to turn off nucleotide
    compsition bias correction. default=6
  type: string
  inputBinding:
    prefix: --kmerSize
- id: bin
  doc: Chromosome chunk size. Each chomosome will be cut into small chunks of this
    size. Decrease chunk size will save more RAM. default=100000 (bp)
  type: string
  inputBinding:
    prefix: --bin
- id: depth
  doc: Reference reads count (default = 10 million). Sequencing depth will be normailzed
    to this number, so that wig files are comparable between replicates.
  type: string
  inputBinding:
    prefix: --depth
- id: q_cut
  doc: phred scaled mapping quality threshhold to determine "uniqueness" of alignments.
    default=30
  type: string
  inputBinding:
    prefix: --qCut
- id: method
  doc: methods ("EM", "AM", "GM", or "SNR") used to consolidate replicates and reduce
    noise. "EM" = Entropy weighted mean, "AM"=Arithmetic mean, "GM"=Geometric mean,
    "SNR"=Signal-to-noise ratio. default=EM
  type: string
  inputBinding:
    prefix: --method
outputs: []
cwlVersion: v1.1
baseCommand:
- preprocessor.py
