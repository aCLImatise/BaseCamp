class: CommandLineTool
id: guidescan_processer.cwl
inputs:
- id: f
  doc: 'path to fasta file or folder with fasta files (will use all .fa, .fasta, .fa.gz,
    .fasta.gz files found in the folder) (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: 'project name, use in all output (will produce a folder with this name containing
    intermediate and final files in it) (default: myguides)'
  type: string
  inputBinding:
    prefix: -n
- id: min_chr
  doc: 'minimum chromosome length to consider, chromosomes in input FASTA that are
    shorter than this will be excluded from analysis; simple way to exclude scaffolds
    unassigned to known chromosomes etc. (default: 10000)'
  type: long
  inputBinding:
    prefix: --minchr
- id: c
  doc: 'list names of chromosomes (comma separated) that will be used in analysis,
    or name of file where this list is stored (default: )'
  type: string
  inputBinding:
    prefix: -c
- id: l
  doc: 'desired length of guideRNAs (not including PAM) (default: 20)'
  type: long
  inputBinding:
    prefix: -l
- id: p
  doc: 'PAM sequence (default: NGG)'
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: 'alternative PAM sequences (separate multiple ones by commas), will not be
    used in primary guideRNAs, but will be considered in off-targets; all PAM sequences
    should be mutually exclusive and of the same length (default: NAG)'
  type: string
  inputBinding:
    prefix: -a
- id: pam_pos
  doc: 'position of PAM with respect to guideRNA (default: end)'
  type: string
  inputBinding:
    prefix: --pampos
- id: s
  doc: 'minimum mismatch similarity between guideRNAs; a candidate guideRNA (with
    primary PAM) should not have alternative occurences in the genome (with any PAM)
    with less than this many mismatches (not including PAM) (default: 2)'
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: 'maximum distance to consider from guideRNA to its off- target; off-target
    is an alternative occurrence (with any PAM) of this guideRNA in the genome at
    edit distance at most this number (including PAM); currently values larger than
    4 are infeasible for large (e.g., mammalian) genomes, and value 3 will take long
    time to compute; use -1 if do not want any off- target info in resulting database
    (can add it later using bamdata) (default: 3)'
  type: string
  inputBinding:
    prefix: -d
- id: max_off_pos
  doc: 'maximum number of positions of k-mers to remember; for k-mer occurring multiple
    times in the genome (such k-mers cannot be guideRNAs, but their positions can
    be off-targets of guideRNAs) store at most this many arbitrary their occurrences
    in the genome (default: 10)'
  type: long
  inputBinding:
    prefix: --maxoffpos
- id: max_off_count
  doc: 'maximum number of off-targets to store for a guideRNA in a resulting BAM library
    (default: 1000)'
  type: long
  inputBinding:
    prefix: --maxoffcount
- id: gnu_path
  doc: 'path to gnu utilities, e.g. "/usr/local/bin"; if empty, use system defaults;
    requires: cut, sort, uniq, shuf (default: )'
  type: string
  inputBinding:
    prefix: --gnupath
- id: t
  doc: 'how many threads to use; do not specify more than you have on your system;
    currently not implemented (default: 1)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- guidescan_processer
