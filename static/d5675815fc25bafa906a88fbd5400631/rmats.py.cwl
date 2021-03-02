class: CommandLineTool
id: rmats.py.cwl
inputs:
- id: in_gtf
  doc: An annotation of genes and transcripts in GTF format
  type: string?
  inputBinding:
    prefix: --gtf
- id: in_bone
  doc: "A text file containing a comma separated list of the\nBAM files for sample_1.\
    \ (Only if using BAM)"
  type: long?
  inputBinding:
    prefix: --b1
- id: in_b_two
  doc: "A text file containing a comma separated list of the\nBAM files for sample_2.\
    \ (Only if using BAM)"
  type: long?
  inputBinding:
    prefix: --b2
- id: in_s_one
  doc: "A text file containing a comma separated list of the\nFASTQ files for sample_1.\
    \ If using paired reads the\nformat is \":\" to separate pairs and \",\" to separate\n\
    replicates. (Only if using fastq)"
  type: long?
  inputBinding:
    prefix: --s1
- id: in_s_two
  doc: "A text file containing a comma separated list of the\nFASTQ files for sample_2.\
    \ If using paired reads the\nformat is \":\" to separate pairs and \",\" to separate\n\
    replicates. (Only if using fastq)"
  type: long?
  inputBinding:
    prefix: --s2
- id: in_od
  doc: The directory for final output
  type: Directory?
  inputBinding:
    prefix: --od
- id: in_tmp
  doc: "The directory for intermediate output such as \".rmats\"\nfiles from the prep\
    \ step"
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_type_used_forpairedend
  doc: "Type of read used in the analysis: either \"paired\" for\npaired-end data\
    \ or \"single\" for single-end data.\nDefault: paired"
  type: string?
  inputBinding:
    prefix: -t
- id: in_lib_type
  doc: "Library type. Use fr-firststrand or fr-secondstrand\nfor strand-specific data.\
    \ Default: fr-unstranded"
  type: string?
  inputBinding:
    prefix: --libType
- id: in_read_length
  doc: The length of each read
  type: long?
  inputBinding:
    prefix: --readLength
- id: in_variable_read_length
  doc: "Allow reads with lengths that differ from --readLength\nto be processed. --readLength\
    \ will still be used to\ndetermine IncFormLen and SkipFormLen"
  type: boolean?
  inputBinding:
    prefix: --variable-read-length
- id: in_anchor_length
  doc: The anchor length. Default is 1
  type: long?
  inputBinding:
    prefix: --anchorLength
- id: in_top_hat_anchor
  doc: "The \"anchor length\" or \"overhang length\" used in the\naligner. At least\
    \ \"anchor length\" NT must be mapped to\neach end of a given junction. The default\
    \ is 6. (Only\nif using fastq)"
  type: long?
  inputBinding:
    prefix: --tophatAnchor
- id: in_bi
  doc: "The directory name of the STAR binary indices (name of\nthe directory that\
    \ contains the SA file). (Only if\nusing fastq)"
  type: File?
  inputBinding:
    prefix: --bi
- id: in_n_thread
  doc: "The number of threads. The optimal number of threads\nshould be equal to the\
    \ number of CPU cores. Default: 1"
  type: long?
  inputBinding:
    prefix: --nthread
- id: in_t_stat
  doc: "The number of threads for the statistical model.\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --tstat
- id: in_cst_at
  doc: "The cutoff splicing difference. The cutoff used in the\nnull hypothesis test\
    \ for differential splicing. The\ndefault is 0.0001 for 0.01% difference. Valid:\
    \ 0 <=\ncutoff < 1. Does not apply to the paired stats model"
  type: double?
  inputBinding:
    prefix: --cstat
- id: in_task
  doc: "Specify which step(s) of rMATS to run. Default: both.\nprep: preprocess BAMs\
    \ and generate a .rmats file.\npost: load .rmats file(s) into memory, detect and\n\
    count alternative splicing events, and calculate P\nvalue (if not --statoff).\
    \ both: prep + post. inte\n(integrity): check that the BAM filenames recorded\
    \ by\nthe prep task(s) match the BAM filenames for the\ncurrent command line"
  type: string?
  inputBinding:
    prefix: --task
- id: in_stat_off
  doc: Skip the statistical analysis
  type: boolean?
  inputBinding:
    prefix: --statoff
- id: in_paired_stats
  doc: Use the paired stats model
  type: boolean?
  inputBinding:
    prefix: --paired-stats
- id: in_novels_s
  doc: "Enable detection of novel splice sites (unannotated\nsplice sites). Default\
    \ is no detection of novel splice\nsites"
  type: boolean?
  inputBinding:
    prefix: --novelSS
- id: in_mil
  doc: "Minimum Intron Length. Only impacts --novelSS\nbehavior. Default: 50"
  type: long?
  inputBinding:
    prefix: --mil
- id: in_mel
  doc: "Maximum Exon Length. Only impacts --novelSS behavior.\nDefault: 500\n"
  type: long?
  inputBinding:
    prefix: --mel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_od
  doc: The directory for final output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_od)
- id: out_tmp
  doc: "The directory for intermediate output such as \".rmats\"\nfiles from the prep\
    \ step"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_tmp)
hints: []
cwlVersion: v1.1
baseCommand:
- rmats.py
