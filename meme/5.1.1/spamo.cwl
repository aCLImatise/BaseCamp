class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spamo.cwl
inputs:
- id: create_directory_write
  doc: create the directory and write output files in it; not compatible with -oc
  type: Directory
  inputBinding:
    prefix: -o
- id: oc
  doc: 'create the directory but if it already exists allow overwriting the contents;
    default: spamo_out'
  type: Directory
  inputBinding:
    prefix: -oc
- id: min_score
  doc: 'the minimum score (bits) to accept as a motif match; default: 7 Note: if <valu>
    is in the range [-1, 0), then the minimum score is set to: -<valu>*pwm_maximum_score'
  type: string
  inputBinding:
    prefix: -minscore
- id: margin
  doc: 'edge margin excluded for primary motif matches and the maximum distance from
    the primary motif to the secondary motif; default: 150'
  type: long
  inputBinding:
    prefix: -margin
- id: bin
  doc: 'size of bins used for output; default: 1'
  type: long
  inputBinding:
    prefix: -bin
- id: range
  doc: 'the range from the primary to include in significance tests; default: 150'
  type: long
  inputBinding:
    prefix: -range
- id: use_best_sec
  doc: 'use only the best match of the secondary motif; default: count all secondary
    matches above the score match threshold in the margins around the primary motif
    match'
  type: boolean
  inputBinding:
    prefix: -usebestsec
- id: shared
  doc: 'fraction of shared trimmed sequence content that is required to exclude the
    sequence as redundant; set <fract> to 0 to skip sequence redundancy check; default:
    0.5'
  type: string
  inputBinding:
    prefix: -shared
- id: odds
  doc: 'odds ratio used for speedup of the redundant sequence check; low values may
    cause some  redundant sequences to be missed; set <odds> to 0 to do full-length
    check; default: 20'
  type: string
  inputBinding:
    prefix: -odds
- id: cut_off
  doc: 'cutoff for spacings to be considered significant; default: 0.05'
  type: string
  inputBinding:
    prefix: -cutoff
- id: evalue
  doc: 'minimum E-value for printing secondary motifs; default: 10'
  type: string
  inputBinding:
    prefix: -evalue
- id: overlap
  doc: 'number of bases that the most significant spacing must overlap before further
    redundancy testing is done; default: 2'
  type: long
  inputBinding:
    prefix: -overlap
- id: joint
  doc: 'fraction of sites making up the most significant spacing that must be in both
    sets for the less significant motif to be considered redundant; default: 0.5'
  type: string
  inputBinding:
    prefix: -joint
- id: pseudo
  doc: 'pseudocount added to loaded motifs; default: 0.1'
  type: string
  inputBinding:
    prefix: -pseudo
- id: bg_file
  doc: 'file containing background frequency information used to apply pseudocounts
    to motifs and create the scoring matrices; default: calculate from sequences'
  type: File
  inputBinding:
    prefix: -bgfile
- id: x_alph
  doc: 'Convert the alphabet of the secondary motif databases to the alphabet of the
    primary motif assuming the core symbols of the secondary motif alphabet are a
    subset; default: reject differences'
  type: boolean
  inputBinding:
    prefix: -xalph
- id: trim
  doc: 'trim the edges of motifs based on the information content; positions on the
    edges with information content less than bits will not be used in scanning default:
    0.25'
  type: string
  inputBinding:
    prefix: -trim
- id: num_gen
  doc: "specify the random seed for initializing the pseudo- random number generator\
    \ used in breaking ties; the seed is included in the output so experiments can\
    \ be repeated; special value 'time' seeds to the system clock; default: 1"
  type: string
  inputBinding:
    prefix: -numgen
- id: primary
  doc: name of motif to select as the primary motif; overrides -primaryi
  type: string
  inputBinding:
    prefix: -primary
- id: primary_i
  doc: 'index of motif to select as the primary motif counting from 1; default: 1'
  type: string
  inputBinding:
    prefix: -primaryi
- id: keep_primary
  doc: by default all occurrences of the primary other than the chosen one are erased
    to reduce the number of motifs whose apparent enrichment is due to multiple occurrences
    of the primary motif. If the same file is specified for the primary and secondary
    motifs, then this option will override erasing and primary-primary spacings will
    be analyzed.
  type: boolean
  inputBinding:
    prefix: -keepprimary
- id: inc
  doc: 'name pattern to select as secondary motif; may be repeated; default: all motifs
    are used'
  type: string
  inputBinding:
    prefix: -inc
- id: exc
  doc: 'name pattern to exclude as secondary motif; may be repeated; default: all
    motifs are used'
  type: string
  inputBinding:
    prefix: -exc
- id: text
  doc: output text file only (no HTML or XML)
  type: boolean
  inputBinding:
    prefix: -text
- id: eps
  doc: output histograms in eps format; usable with -png
  type: boolean
  inputBinding:
    prefix: -eps
- id: png
  doc: output histograms in png format; usable with -eps
  type: boolean
  inputBinding:
    prefix: -png
- id: dumps_eqs
  doc: dump matching trimmed sequences to output files; matches are initially in sequence
    name order; see documentation for column descriptions
  type: boolean
  inputBinding:
    prefix: -dumpseqs
- id: dump_sigs
  doc: same as above except only secondary matches in in significant bins are dumped
    matches are initially in sequence name order; see documentation for column descriptions
  type: boolean
  inputBinding:
    prefix: -dumpsigs
- id: verbosity
  doc: 'set the verbosity of the output: 1 (quiet) - 5 (dump); default: 2 (normal)'
  type: string
  inputBinding:
    prefix: -verbosity
- id: version
  doc: print the version and exit
  type: boolean
  inputBinding:
    prefix: -version
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: primary_motif
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: secondary_motifs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- spamo
