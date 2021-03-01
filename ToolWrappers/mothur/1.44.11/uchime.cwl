class: CommandLineTool
id: uchime.cwl
inputs:
- id: in_input
  doc: "Query sequences in FASTA format.\nIf the --db option is not specificed, uchime\
    \ uses de novo\ndetection. In de novo mode, relative abundance must be given\n\
    by a string /ab=xxx/ somewhere in the label, where xxx is a\nfloating-point number,\
    \ e.g. >F00QGH67HG/ab=1.2/."
  type: File?
  inputBinding:
    prefix: --input
- id: in_db
  doc: "Reference database in FASTA format.\nOptional, if not specified uchime uses\
    \ de novo mode.\n***WARNING*** The database is searched ONLY on the plus strand.\n\
    You MUST include reverse-complemented sequences in the database\nif you want both\
    \ strands to be searched."
  type: File?
  inputBinding:
    prefix: --db
- id: in_ab_skew
  doc: "Minimum abundance skew. Default 1.9. De novo mode only.\nAbundance skew is:\n\
    min [ abund(parent1), abund(parent2) ] / abund(query)."
  type: long?
  inputBinding:
    prefix: --abskew
- id: in_uchi_me_out
  doc: "Output in tabbed format with one record per query sequence.\nFirst field is\
    \ score (h), second field is query label.\nFor details, see manual."
  type: File?
  inputBinding:
    prefix: --uchimeout
- id: in_uchi_meal_ns
  doc: "Multiple alignments of query sequences to parents in human-\nreadable format.\
    \ Alignments show columns with differences\nthat support or contradict a chimeric\
    \ model."
  type: File?
  inputBinding:
    prefix: --uchimealns
- id: in_minh
  doc: "Mininum score to report chimera. Default 0.3. Values from 0.1\nto 5 might\
    \ be reasonable. Lower values increase sensitivity\nbut may report more false\
    \ positives. If you decrease --xn,\nyou may need to increase --minh, and vice\
    \ versa."
  type: double?
  inputBinding:
    prefix: --minh
- id: in_mind_iv
  doc: "Minimum divergence ratio, default 0.5. Div ratio is 100% -\n%identity between\
    \ query sequence and the closest candidate for\nbeing a parent. If you don't care\
    \ about very close chimeras,\nthen you could increase --mindiv to, say, 1.0 or\
    \ 2.0, and\nalso decrease --min h, say to 0.1, to increase sensitivity.\nHow well\
    \ this works will depend on your data. Best is to\ntune parameters on a good benchmark."
  type: long?
  inputBinding:
    prefix: --mindiv
- id: in_xn
  doc: "Weight of a no vote, also called the beta parameter. Default 8.0.\nDecreasing\
    \ this weight to around 3 or 4 may give better\nperformance on denoised data."
  type: double?
  inputBinding:
    prefix: --xn
- id: in_dn
  doc: "Pseudo-count prior on number of no votes. Default 1.4. Probably\nno good reason\
    \ to change this unless you can retune to a good\nbenchmark for your data. Reasonable\
    \ values are probably in the\nrange from 0.2 to 2."
  type: long?
  inputBinding:
    prefix: --dn
- id: in_x_a
  doc: "Weight of an abstain vote. Default 1. So far, results do not\nseem to be very\
    \ sensitive to this parameter, but if you have\na good training set might be worth\
    \ trying. Reasonable values\nmight range from 0.1 to 2."
  type: double?
  inputBinding:
    prefix: --xa
- id: in_chunks
  doc: "Number of chunks to extract from the query sequence when searching\nfor parents.\
    \ Default 4."
  type: long?
  inputBinding:
    prefix: --chunks
- id: in_min_chunk
  doc: Minimum length of a chunk. Default 64.
  type: long?
  inputBinding:
    prefix: --minchunk
- id: in_id_smooth_window
  doc: Length of id smoothing window. Default 32.
  type: long?
  inputBinding:
    prefix: --idsmoothwindow
- id: in_min_smooth_id
  doc: "Minimum factional identity over smoothed window of candidate parent.\nDefault\
    \ 0.95."
  type: double?
  inputBinding:
    prefix: --minsmoothid
- id: in_maxp
  doc: "Maximum number of candidate parents to consider. Default 2. In tests so\n\
    far, increasing --maxp gives only a very small improvement in sensivity\nbut tends\
    \ to increase the error rate quite a bit."
  type: long?
  inputBinding:
    prefix: --maxp
- id: in_min_len
  doc: "Minimum and maximum sequence length. Defaults 10, 10000.\nApplies to both\
    \ query and reference sequences."
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_ucl
  doc: "Use local-X alignments. Default is global-X. On tests so far, global-X\nis\
    \ always better; this option is retained because it just might work\nwell on some\
    \ future type of data."
  type: boolean?
  inputBinding:
    prefix: --ucl
- id: in_query_fract
  doc: "Minimum fraction of the query sequence that must be covered by a local-X\n\
    alignment. Default 0.5. Applies only when --ucl is specified."
  type: double?
  inputBinding:
    prefix: --queryfract
- id: in_quiet
  doc: Do not display progress messages on stderr.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log
  doc: "Write miscellaneous information to the log file. Mostly of interest\nto me\
    \ (the algorithm developer). Use --verbose to get more info."
  type: File?
  inputBinding:
    prefix: --log
- id: in_self
  doc: "In reference database mode, exclude a reference sequence if it has\nthe same\
    \ label as the query. This is useful for benchmarking by using\nthe ref db as\
    \ a query to test for false positives."
  type: boolean?
  inputBinding:
    prefix: --self
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- uchime
