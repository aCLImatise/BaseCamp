class: CommandLineTool
id: rnaseqc.cwl
inputs:
- id: in_name_current_sample
  doc: "[sample], --sample=[sample]     The name of the current sample. Default:\n\
    The bam's filename"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_bed
  doc: "=[BEDFILE]                   Optional input BED file containing\nnon-overlapping\
    \ exons used for fragment\nsize calculations"
  type: boolean
  inputBinding:
    prefix: --bed
- id: in_fast_a
  doc: "=[fasta]                   Optional input FASTA/FASTQ file\ncontaining the\
    \ reference sequence used\nfor parsing CRAM files"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_chimeric_distance
  doc: "=[DISTANCE]    Set the maximum accepted distance\nbetween read mates. Mates\
    \ beyond this\ndistance will be counted as chimeric\npairs. Default: 2000000 [bp]"
  type: boolean
  inputBinding:
    prefix: --chimeric-distance
- id: in_fragment_samples
  doc: "=[SAMPLES]      Set the number of samples to take when\ncomputing fragment\
    \ sizes. Requires the\n--bed argument. Default: 1000000"
  type: boolean
  inputBinding:
    prefix: --fragment-samples
- id: in_q
  doc: '[QUALITY],'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_mapping_quality
  doc: "=[QUALITY]       Set the lower bound on read quality for\nexon coverage counting.\
    \ Reads below this\nnumber are excluded from coverage\nmetrics. Default: 255"
  type: boolean
  inputBinding:
    prefix: --mapping-quality
- id: in_base_mismatch
  doc: "=[MISMATCHES]      Set the maximum number of allowed\nmismatches between a\
    \ read and the\nreference sequence. Reads with more than\nthis number of mismatches\
    \ are excluded\nfrom coverage metrics. Default: 6"
  type: boolean
  inputBinding:
    prefix: --base-mismatch
- id: in_offset
  doc: "=[OFFSET]                 Set the offset into the gene for the 3'\nand 5'\
    \ windows in bias calculation. A\npositive value shifts the 3' and 5'\nwindows\
    \ towards eachother, while a\nnegative value shifts them apart.\nDefault: 150\
    \ [bp]"
  type: boolean
  inputBinding:
    prefix: --offset
- id: in_window_size
  doc: "=[SIZE]              Set the size of the 3' and 5' windows in\nbias calculation.\
    \ Default: 100 [bp]"
  type: boolean
  inputBinding:
    prefix: --window-size
- id: in_gene_length
  doc: "=[LENGTH]            Set the minimum size of a gene for bias\ncalculation.\
    \ Genes below this size are\nignored in the calculation. Default: 600\n[bp]"
  type: boolean
  inputBinding:
    prefix: --gene-length
- id: in_legacy
  doc: "Use legacy counting rules. Gene and exon\ncounts match output of RNA-SeQC\
    \ 1.1.9"
  type: boolean
  inputBinding:
    prefix: --legacy
- id: in_stranded
  doc: "=[stranded]             Use strand-specific metrics. Only\nfeatures on the\
    \ same strand of a read\nwill be considered. Allowed values are\n'RF', 'rf', 'FR',\
    \ and 'fr'"
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_verbose
  doc: "Give some feedback about what's going\non. Supply this argument twice for\n\
    progress updates while parsing the bam"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_filter_reads_specified
  doc: '[TAG...], --tag=[TAG...]        Filter out reads with the specified tag.'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_chimeric_tag
  doc: "=[TAG]              Reads maked with the specified tag will\nbe labeled as\
    \ Chimeric. Defaults to 'mC'\nfor STAR"
  type: boolean
  inputBinding:
    prefix: --chimeric-tag
- id: in_exclude_chimeric
  doc: Exclude chimeric reads from the read
  type: boolean
  inputBinding:
    prefix: --exclude-chimeric
- id: in_rp_km
  doc: Output gene RPKM values instead of TPMs
  type: boolean
  inputBinding:
    prefix: --rpkm
- id: in_coverage
  doc: "If this flag is provided, coverage\nstatistics for each transcript will be\n\
    written to a table. Otherwise, only\nsummary coverage statistics are\ngenerated\
    \ and added to the metrics table"
  type: boolean
  inputBinding:
    prefix: --coverage
- id: in_coverage_mask
  doc: "=[SIZE]            Sets how many bases at both ends of a\ntranscript are masked\
    \ out when computing\nper-base exon coverage. Default: 500bp"
  type: boolean
  inputBinding:
    prefix: --coverage-mask
- id: in_d
  doc: '[threshold],'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_detection_threshold
  doc: "=[threshold] Number of counts on a gene to consider\nthe gene 'detected'.\
    \ Additionally, genes\nbelow this limit are excluded from 3'\nbias computation.\
    \ Default: 5 reads"
  type: boolean
  inputBinding:
    prefix: --detection-threshold
- id: in_gtf
  doc: "The input GTF file containing features\nto check the bam against"
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: "The input SAM/BAM file containing reads\nto process"
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Output directory
  type: string
  inputBinding:
    position: 2
- id: in_counts
  doc: -u, --unpaired                    Allow unpaired reads to be quantified.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnaseqc
