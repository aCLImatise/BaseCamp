class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RNASeq_MATS.py.cwl
inputs:
- id: gtf
  doc: An annotation of genes and transcripts in GTF format
  type: string
  inputBinding:
    prefix: --gtf
- id: bone
  doc: A text file containing a comma separated list of the BAM files for sample_1.
    (Only if using BAM)
  type: string
  inputBinding:
    prefix: --b1
- id: b_two
  doc: A text file containing a comma separated list of the BAM files for sample_2.
    (Only if using BAM)
  type: string
  inputBinding:
    prefix: --b2
- id: s_one
  doc: A text file containing a comma separated list of the FASTQ files for sample_1.
    If using paired reads the format is ":" to separate pairs and "," to separate
    replicates. (Only if using fastq)
  type: string
  inputBinding:
    prefix: --s1
- id: s_two
  doc: A text file containing a comma separated list of the FASTQ files for sample_2.
    If using paired reads the format is ":" to separate pairs and "," to separate
    replicates. (Only if using fastq)
  type: string
  inputBinding:
    prefix: --s2
- id: od
  doc: The directory for final output
  type: string
  inputBinding:
    prefix: --od
- id: tmp
  doc: The directory for intermediate output such as ".rmats" files from the prep
    step
  type: string
  inputBinding:
    prefix: --tmp
- id: type_read_used
  doc: 'Type of read used in the analysis: either "paired" for paired-end data or
    "single" for single-end data. Default: paired'
  type: string
  inputBinding:
    prefix: -t
- id: lib_type
  doc: 'Library type. Use fr-firststrand or fr-secondstrand for strand-specific data.
    Default: fr-unstranded'
  type: string
  inputBinding:
    prefix: --libType
- id: read_length
  doc: The length of each read
  type: string
  inputBinding:
    prefix: --readLength
- id: variable_read_length
  doc: Allow reads with lengths that differ from --readLength to be processed. --readLength
    will still be used to determine IncFormLen and SkipFormLen
  type: boolean
  inputBinding:
    prefix: --variable-read-length
- id: anchor_length
  doc: The anchor length. Default is 1
  type: string
  inputBinding:
    prefix: --anchorLength
- id: top_hat_anchor
  doc: The "anchor length" or "overhang length" used in the aligner. At least "anchor
    length" NT must be mapped to each end of a given junction. The default is 6. (Only
    if using fastq)
  type: string
  inputBinding:
    prefix: --tophatAnchor
- id: bi
  doc: The directory name of the STAR binary indices (name of the directory that contains
    the SA file). (Only if using fastq)
  type: string
  inputBinding:
    prefix: --bi
- id: n_thread
  doc: 'The number of threads. The optimal number of threads should be equal to the
    number of CPU cores. Default: 1'
  type: string
  inputBinding:
    prefix: --nthread
- id: t_stat
  doc: 'The number of threads for the statistical model. Default: 1'
  type: string
  inputBinding:
    prefix: --tstat
- id: cst_at
  doc: 'The cutoff splicing difference. The cutoff used in the null hypothesis test
    for differential splicing. The default is 0.0001 for 0.01% difference. Valid:
    0 <= cutoff < 1. Does not apply to the paired stats model'
  type: string
  inputBinding:
    prefix: --cstat
- id: task
  doc: 'Specify which step(s) of rMATS to run. Default: both. prep: preprocess BAMs
    and generate a .rmats file. post: load .rmats file(s) into memory, detect and
    count alternative splicing events, and calculate P value (if not --statoff). both:
    prep + post. inte (integrity): check that the BAM filenames recorded by the prep
    task(s) match the BAM filenames for the current command line'
  type: string
  inputBinding:
    prefix: --task
- id: stat_off
  doc: Skip the statistical analysis
  type: boolean
  inputBinding:
    prefix: --statoff
- id: paired_stats
  doc: Use the paired stats model
  type: boolean
  inputBinding:
    prefix: --paired-stats
- id: novels_s
  doc: Enable detection of novel splice sites (unannotated splice sites). Default
    is no detection of novel splice sites
  type: boolean
  inputBinding:
    prefix: --novelSS
- id: mil
  doc: 'Minimum Intron Length. Only impacts --novelSS behavior. Default: 50'
  type: string
  inputBinding:
    prefix: --mil
- id: mel
  doc: 'Maximum Exon Length. Only impacts --novelSS behavior. Default: 500'
  type: string
  inputBinding:
    prefix: --mel
outputs: []
cwlVersion: v1.1
baseCommand:
- RNASeq-MATS.py
