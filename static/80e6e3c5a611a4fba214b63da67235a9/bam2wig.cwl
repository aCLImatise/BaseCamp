class: CommandLineTool
id: ../../../bam2wig.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM format. BAM file must be sorted and indexed using samTools.
    .bam and .bai files should be placed in the same directory.
  type: string
  inputBinding:
    prefix: --input-file
- id: chrom_size
  doc: 'Chromosome size file. Tab or space separated text file with 2 columns: first
    column is chromosome name/ID, second column is chromosome size. Chromosome name
    (such as "chr1") should be consistent between this file and the BAM file.'
  type: string
  inputBinding:
    prefix: --chromSize
- id: out_prefix
  doc: Prefix of output wiggle files(s). One wiggle file will be generated for non
    strand-specific data, two wiggle files ("Prefix_Forward.wig" and "Prefix_Reverse.wig")
    will be generated for strand-specific RNA-seq data.
  type: string
  inputBinding:
    prefix: --out-prefix
- id: wig_sum
  doc: 'Specified wigsum. Eg: 1,000,000,000 equals to coverage of 10 million 100nt
    reads. Ignore this option to disable normalization'
  type: string
  inputBinding:
    prefix: --wigsum
- id: skip_multi_hits
  doc: Skip non-unique hit reads.
  type: boolean
  inputBinding:
    prefix: --skip-multi-hits
- id: strand
  doc: "How read(s) were stranded during sequencing. For example: --strand='1++,1--,2+-,2-+'\
    \ means that this is a pair-end, strand-specific RNA-seq data, and the strand\
    \ rule is: read1 mapped to '+' => parental gene on '+'; read1 mapped to '-' =>\
    \ parental gene on '-'; read2 mapped to '+' => parental gene on '-'; read2 mapped\
    \ to '-' => parental gene on '+'.  If you are not sure about the strand rule,\
    \ run 'infer_experiment.py' default=none (Not a strand specific RNA-seq data)."
  type: string
  inputBinding:
    prefix: --strand
- id: mapq
  doc: Minimum mapping quality to determine "uniquely mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2wig.py
