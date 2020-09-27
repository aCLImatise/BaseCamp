class: CommandLineTool
id: sim4db.cwl
inputs:
- id: in_print_status_running
  doc: print status to stderr while running
  type: boolean
  inputBinding:
    prefix: -v
- id: in_print_script_lines_stderr
  doc: print script lines (stderr) as they are processed
  type: boolean
  inputBinding:
    prefix: -V
- id: in_yn
  doc: print script lines (to given file) as they are processed, annotated with yes/no
  type: boolean
  inputBinding:
    prefix: -YN
- id: in_cdna
  doc: use these cDNA sequences
  type: boolean
  inputBinding:
    prefix: -cdna
- id: in_genomic
  doc: use these genomic sequences
  type: boolean
  inputBinding:
    prefix: -genomic
- id: in_script
  doc: use this script file
  type: boolean
  inputBinding:
    prefix: -script
- id: in_pairwise
  doc: do pairs of sequences
  type: boolean
  inputBinding:
    prefix: -pairwise
- id: in_output
  doc: write output to this file
  type: File
  inputBinding:
    prefix: -output
- id: in_touch
  doc: create this file when the program finishes execution
  type: boolean
  inputBinding:
    prefix: -touch
- id: in_threads
  doc: Use n threads.
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_min_coverage
  doc: "iteratively find all exon models with the specified\nminimum PERCENT COVERAGE"
  type: boolean
  inputBinding:
    prefix: -mincoverage
- id: in_min_identity
  doc: "iteratively find all exon models with the specified\nminimum PERCENT EXON\
    \ IDENTITY"
  type: boolean
  inputBinding:
    prefix: -minidentity
- id: in_minlength
  doc: "iteratively find all exon models with the specified\nminimum ABSOLUTE COVERAGE\
    \ (number of bp matched)"
  type: boolean
  inputBinding:
    prefix: -minlength
- id: in_always_report
  doc: "report <number> exon models, even if they\nare below the quality thresholds\n\
    If no mincoverage or minidentity or minlength is given, only\nthe best exon model\
    \ is returned.\nYou will probably want to specify ALL THREE of mincoverage,\n\
    minidentity and minlength!  Don't assume the default values\nare what you want!\n\
    You will DEFINITELY want to specify at least one of mincoverage,\nminidentity\
    \ and minlength with alwaysreport!  If you don't, mincoverage\nwill be set to\
    \ 90 and minidentity to 95 -- to reduce the number of\nspurious matches when a\
    \ good match is found."
  type: long
  inputBinding:
    prefix: -alwaysreport
- id: in_no_def_lines
  doc: don't include the defline in the output
  type: boolean
  inputBinding:
    prefix: -nodeflines
- id: in_alignments
  doc: print alignments
  type: boolean
  inputBinding:
    prefix: -alignments
- id: in_poly_tails
  doc: DON'T mask poly-A and poly-T tails.
  type: boolean
  inputBinding:
    prefix: -polytails
- id: in_cut
  doc: Trim marginal exons if A/T % > x (poly-AT tails)
  type: boolean
  inputBinding:
    prefix: -cut
- id: in_noncanonical
  doc: "'t force canonical splice sites"
  type: string
  inputBinding:
    prefix: -noncanonical
- id: in_splice_model
  doc: "Use the following splice model: 0 - original sim4;\n1 - GeneSplicer; 2 - Glimmer\
    \ (default: 0)"
  type: boolean
  inputBinding:
    prefix: -splicemodel
- id: in_force_strand
  doc: "Force the strand prediction to always be\n'forward' or 'reverse'"
  type: boolean
  inputBinding:
    prefix: -forcestrand
- id: in_interspecies
  doc: sim4cc for inter-species alignments
  type: long
  inputBinding:
    prefix: -interspecies
- id: in_set_spaced_pattern
  doc: set the (spaced) seed pattern
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_set_relink_factor
  doc: set the relink weight factor
  type: boolean
  inputBinding:
    prefix: -H
- id: in_set_first_threshold
  doc: set the first MSP threshold
  type: boolean
  inputBinding:
    prefix: -K
- id: in_set_second_threshold
  doc: set the second MSP threshold
  type: boolean
  inputBinding:
    prefix: -C
- id: in_ma
  doc: set the limit of the number of MSPs allowed
  type: boolean
  inputBinding:
    prefix: -Ma
- id: in_mp
  doc: "same, as percentage of bases in cDNA\nNOTE:  If used, both -Ma and -Mp must\
    \ be specified!\n"
  type: boolean
  inputBinding:
    prefix: -Mp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to this file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sim4db
