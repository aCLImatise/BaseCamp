class: CommandLineTool
id: guidescan_processer.cwl
inputs:
- id: in_path_fasta_file
  doc: "path to fasta file or folder with fasta files (will\nuse all .fa, .fasta,\
    \ .fa.gz, .fasta.gz files found in\nthe folder) (default: None)"
  type: File?
  inputBinding:
    prefix: -f
- id: in_project_name_use
  doc: "project name, use in all output (will produce a folder\nwith this name containing\
    \ intermediate and final files\nin it) (default: myguides)"
  type: Directory?
  inputBinding:
    prefix: -n
- id: in_min_chr
  doc: "minimum chromosome length to consider, chromosomes in\ninput FASTA that are\
    \ shorter than this will be\nexcluded from analysis; simple way to exclude\nscaffolds\
    \ unassigned to known chromosomes etc.\n(default: 10000)"
  type: long?
  inputBinding:
    prefix: --minchr
- id: in_list_names_chromosomes
  doc: "list names of chromosomes (comma separated) that will\nbe used in analysis,\
    \ or name of file where this list\nis stored (default: )"
  type: File?
  inputBinding:
    prefix: -c
- id: in_desired_length_including
  doc: "desired length of guideRNAs (not including PAM)\n(default: 20)"
  type: long?
  inputBinding:
    prefix: -l
- id: in_pam_sequence_default
  doc: 'PAM sequence (default: NGG)'
  type: string?
  inputBinding:
    prefix: -p
- id: in_alternative_pam_sequences
  doc: "alternative PAM sequences (separate multiple ones by\ncommas), will not be\
    \ used in primary guideRNAs, but\nwill be considered in off-targets; all PAM sequences\n\
    should be mutually exclusive and of the same length\n(default: NAG)"
  type: long?
  inputBinding:
    prefix: -a
- id: in_pam_pos
  doc: "position of PAM with respect to guideRNA (default:\nend)"
  type: string?
  inputBinding:
    prefix: --pampos
- id: in_minimum_mismatch_similarity
  doc: "minimum mismatch similarity between guideRNAs; a\ncandidate guideRNA (with\
    \ primary PAM) should not have\nalternative occurences in the genome (with any\
    \ PAM)\nwith less than this many mismatches (not including\nPAM) (default: 2)"
  type: long?
  inputBinding:
    prefix: -s
- id: in_maximum_distance_consider
  doc: "maximum distance to consider from guideRNA to its off-\ntarget; off-target\
    \ is an alternative occurrence (with\nany PAM) of this guideRNA in the genome\
    \ at edit\ndistance at most this number (including PAM);\ncurrently values larger\
    \ than 4 are infeasible for\nlarge (e.g., mammalian) genomes, and value 3 will\
    \ take\nlong time to compute; use -1 if do not want any off-\ntarget info in resulting\
    \ database (can add it later\nusing bamdata) (default: 3)"
  type: long?
  inputBinding:
    prefix: -d
- id: in_max_off_pos
  doc: "maximum number of positions of k-mers to remember; for\nk-mer occurring multiple\
    \ times in the genome (such\nk-mers cannot be guideRNAs, but their positions can\
    \ be\noff-targets of guideRNAs) store at most this many\narbitrary their occurrences\
    \ in the genome (default:\n10)"
  type: long?
  inputBinding:
    prefix: --maxoffpos
- id: in_max_off_count
  doc: "maximum number of off-targets to store for a guideRNA\nin a resulting BAM\
    \ library (default: 1000)"
  type: long?
  inputBinding:
    prefix: --maxoffcount
- id: in_gnu_path
  doc: "path to gnu utilities, e.g. \"/usr/local/bin\"; if\nempty, use system defaults;\
    \ requires: cut, sort, uniq,\nshuf (default: )"
  type: File?
  inputBinding:
    prefix: --gnupath
- id: in_how_many_threads
  doc: "how many threads to use; do not specify more than you\nhave on your system;\
    \ currently not implemented\n(default: 1)\n"
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_project_name_use
  doc: "project name, use in all output (will produce a folder\nwith this name containing\
    \ intermediate and final files\nin it) (default: myguides)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_project_name_use)
hints: []
cwlVersion: v1.1
baseCommand:
- guidescan_processer
