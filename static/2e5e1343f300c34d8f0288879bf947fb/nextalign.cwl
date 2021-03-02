class: CommandLineTool
id: nextalign.cwl
inputs:
- id: in_version_detailed
  doc: Show detailed version
  type: boolean?
  inputBinding:
    prefix: --version-detailed
- id: in_verbose
  doc: "Increase verbosity of the console output. By\ndefault only errors and warnings\
    \ are shown.\nWith this option more information will be\nprinted."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_jobs
  doc: "(optional, integer) Number of CPU threads\nused by the algorithm. If not specified\
    \ or if a\nnon-positive value specified, the algorithm\nwill use all the available\
    \ threads. (default: 0)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_in_order
  doc: "Force parallel processing in-order. With this\nflag the program will wait\
    \ for results from\nthe previous sequences to be written to the\noutput files\
    \ before writing the results of the\nnext sequences, preserving the same order\
    \ as in\nthe input file. Due to variable sequence\nprocessing times, this might\
    \ introduce unnecessary\nwaiting times, but ensures that the resulting\nsequences\
    \ are written in the same order as\nthey occur in the inputs (except for sequences\n\
    which have errors). By default, without this\nflag, processing might happen out\
    \ of order, which\nis faster, due to the elimination of waiting,\nbut might also\
    \ lead to results written out of\norder - the order of results is not specified\n\
    and depends on thread scheduling and\nprocessing times of individual sequences.\
    \ This option\nis only relevant when `--jobs` is greater than\n1. Note: the sequences\
    \ which trigger errors\nduring processing will be omitted from outputs,\nregardless\
    \ of this flag."
  type: boolean?
  inputBinding:
    prefix: --in-order
- id: in_sequences
  doc: "(required, string) Path to a FASTA file with\ninput sequences"
  type: File?
  inputBinding:
    prefix: --sequences
- id: in_reference
  doc: "(required, string) Path to a FASTA or plain\ntext file containing reference\
    \ sequence"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_genes
  doc: "(optional, string) List of genes to\ntranslate. Requires `--genemap`. If not\
    \ supplied or\nempty, sequence will not be translated. If\nnon-empty, should contain\
    \ a coma-separated list of\ngene names. Parameters `--genes` and\n`--genemap`\
    \ should be either both specified or both\nomitted."
  type: string?
  inputBinding:
    prefix: --genes
- id: in_gene_map
  doc: "(optional, string) Path to a GFF file\ncontaining custom gene map. Requires\
    \ `--genes.` If\nnot supplied, sequence will not be translated.\nParameters `--genes`\
    \ and `--genemap` should be\neither both specified or both omitted."
  type: File?
  inputBinding:
    prefix: --genemap
- id: in_output_dir
  doc: "(optional, string) Write output files to this\ndirectory. The base filename\
    \ can be set using\n`--output-basename` flag. The paths can be\noverridden on\
    \ a per-file basis using\n`--output-*` flags. If the required directory tree does\n\
    not exist, it will be created."
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_output_basename
  doc: "(optional, string) Set the base filename to\nuse for output files. To be used\
    \ together with\n`--output-dir` flag. By default uses the\nfilename of the sequences\
    \ file (provided with\n`--sequences`). The paths can be overridden on a\nper-file\
    \ basis using `--output-*` flags."
  type: File?
  inputBinding:
    prefix: --output-basename
- id: in_output_fast_a
  doc: "(required, string) Path to output aligned\nsequences in FASTA format (overrides\
    \ paths given\nwith `--output-dir` and `--output-basename`).\nIf the required\
    \ directory tree does not exist,\nit will be created."
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_output_insertions
  doc: "(optional, string) Path to output stripped\ninsertions data in CSV format\
    \ (overrides paths\ngiven with `--output-dir` and\n`--output-basename`). If the\
    \ required directory tree does not\nexist, it will be created."
  type: File?
  inputBinding:
    prefix: --output-insertions
- id: in_min_length
  doc: "(optional, integer, non-negative) Minimum\nlength of nucleotide sequence to\
    \ consider for\nalignment. If a sequence is shorter than that,\nalignment will\
    \ not be attempted and a warning\nwill be emitted. When adjusting this parameter,\n\
    note that alignment of short sequences can be\nunreliable. (default: 100)"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_penalty_gap_extend
  doc: "(optional, integer, non-negative) Penalty for\nextending a gap. If zero, all\
    \ gaps regardless\nof length incur the same penalty. (default:\n0)"
  type: long?
  inputBinding:
    prefix: --penalty-gap-extend
- id: in_penalty_gap_open
  doc: "(optional, integer, positive) Penalty for\nopening of a gap. A higher penalty\
    \ results in\nfewer gaps and more mismatches. Should be less\nthan `--penalty-gap-open-in-frame`\
    \ to avoid gaps\nin genes. (default: 6)"
  type: long?
  inputBinding:
    prefix: --penalty-gap-open
- id: in_penalty_gap_open_in_frame
  doc: "(optional, integer, positive) As\n`--penalty-gap-open`, but for opening gaps\
    \ at the\nbeginning of a codon. Should be greater than\n`--penalty-gap-open` and\
    \ less than\n`--penalty-gap-open-out-of-frame`, to avoid gaps in genes, but\n\
    favor gaps that align with codons. (default: 7)"
  type: long?
  inputBinding:
    prefix: --penalty-gap-open-in-frame
- id: in_penalty_gap_open_out_of_frame
  doc: "(optional, integer, positive) As\n`--penalty-gap-open`, but for opening gaps\
    \ in the body of\na codon. Should be greater than\n`--penalty-gap-open-in-frame`\
    \ to favor gaps that align with\ncodons. (default: 8)"
  type: long?
  inputBinding:
    prefix: --penalty-gap-open-out-of-frame
- id: in_penalty_mismatch
  doc: "(optional, integer, positive) Penalty for\naligned nucleotides or aminoacids\
    \ that differ in\nstate during alignment. Note that this is\nredundantly parameterized\
    \ with `--score-match`.\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --penalty-mismatch
- id: in_score_match
  doc: "(optional, integer, positive) Score for\nencouraging aligned nucleotides or\
    \ aminoacids with\nmatching state. (default: 3)"
  type: long?
  inputBinding:
    prefix: --score-match
- id: in_max_in_del
  doc: "(optional, integer, non-negative) Maximum\nlength of insertions or deletions\
    \ allowed to\nproceed with alignment. Alignments with long\nindels are slow to\
    \ compute and require substantial\nmemory in the current implementation.\nAlignment\
    \ of sequences with indels longer that this\nvalue, will not be attempted and\
    \ a warning will\nbe emitted. (default: 400)"
  type: long?
  inputBinding:
    prefix: --max-indel
- id: in_nuc_seed_length
  doc: "(optional, integer, positive) Seed length for\nnucleotide alignment. Seeds\
    \ should be long\nenough to be unique, but short enough to match\nwith high probability.\
    \ (default: 21)"
  type: long?
  inputBinding:
    prefix: --nuc-seed-length
- id: in_nuc_min_seeds
  doc: "(optional, integer, positive) Minimum number\nof seeds to search for during\
    \ nucleotide\nalignment. Relevant for short sequences. In long\nsequences, the\
    \ number of seeds is determined by\n`--nuc-seed-spacing`. Should be a positive\n\
    integer. (default: 10)"
  type: long?
  inputBinding:
    prefix: --nuc-min-seeds
- id: in_nuc_seed_spacing
  doc: "(optional, integer, non-negative) Spacing\nbetween seeds during nucleotide\
    \ alignment.\n(default: 100)"
  type: long?
  inputBinding:
    prefix: --nuc-seed-spacing
- id: in_nuc_mismatches_allowed
  doc: "(optional, integer, non-negative) Maximum\nnumber of mismatching nucleotides\
    \ allowed for a\nseed to be considered a match. (default: 3)"
  type: long?
  inputBinding:
    prefix: --nuc-mismatches-allowed
- id: in_aa_seed_length
  doc: "(optional, integer, positive) Seed length for\naminoacid alignment. (default:\
    \ 12)"
  type: long?
  inputBinding:
    prefix: --aa-seed-length
- id: in_aa_min_seeds
  doc: "(optional, integer, positive) Minimum number\nof seeds to search for during\
    \ aminoacid\nalignment. Relevant for short sequences. In long\nsequences, the\
    \ number of seeds is determined by\n`--aa-seed-spacing`. (default: 10)"
  type: long?
  inputBinding:
    prefix: --aa-min-seeds
- id: in_aa_seed_spacing
  doc: "(optional, integer, non-negative) Spacing\nbetween seeds during aminoacid\
    \ alignment.\n(default: 100)"
  type: long?
  inputBinding:
    prefix: --aa-seed-spacing
- id: in_aa_mismatches_allowed
  doc: "(optional, integer, non-negative) Maximum\nnumber of mismatching aminoacids\
    \ allowed for a\nseed to be considered a match. (default: 2)\n"
  type: long?
  inputBinding:
    prefix: --aa-mismatches-allowed
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "(optional, string) Write output files to this\ndirectory. The base filename\
    \ can be set using\n`--output-basename` flag. The paths can be\noverridden on\
    \ a per-file basis using\n`--output-*` flags. If the required directory tree does\n\
    not exist, it will be created."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_basename
  doc: "(optional, string) Set the base filename to\nuse for output files. To be used\
    \ together with\n`--output-dir` flag. By default uses the\nfilename of the sequences\
    \ file (provided with\n`--sequences`). The paths can be overridden on a\nper-file\
    \ basis using `--output-*` flags."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_basename)
- id: out_output_fast_a
  doc: "(required, string) Path to output aligned\nsequences in FASTA format (overrides\
    \ paths given\nwith `--output-dir` and `--output-basename`).\nIf the required\
    \ directory tree does not exist,\nit will be created."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
- id: out_output_insertions
  doc: "(optional, string) Path to output stripped\ninsertions data in CSV format\
    \ (overrides paths\ngiven with `--output-dir` and\n`--output-basename`). If the\
    \ required directory tree does not\nexist, it will be created."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_insertions)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextalign:0.1.6--0
cwlVersion: v1.1
baseCommand:
- nextalign
