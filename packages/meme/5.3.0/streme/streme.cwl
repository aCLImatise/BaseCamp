class: CommandLineTool
id: streme.cwl
inputs:
- id: in_positive_sequence_file
  doc: positive sequence file name (required)
  type: File?
  inputBinding:
    prefix: --p
- id: in_negative_sequence_file
  doc: "negative sequence file name;\ndefault: if --n is not given, then STREME\n\
    creates negative sequences by shuffling each of\nthe positive sequences preserving\
    \ the positions\nof non-core characters and k-mer frequencies\n(see --kmer, below;\
    \ ignored if --objfun cd given)"
  type: File?
  inputBinding:
    prefix: --n
- id: in_km_er
  doc: "estimates an order k-1 background model for scoring\nsites and preserves k-mer\
    \ frequencies when creating\nnegative sequences by shuffling positive sequences;\n\
    default: 3 (DNA), 3 (RNA), 1 (Protein), 1 (custom)"
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_obj_fun
  doc: "|cd           objective function to optimize in motif discovery\nde : Differential\
    \ Enrichment\ncd : Central Distance\ndefault: de"
  type: string?
  inputBinding:
    prefix: --objfun
- id: in_output_directory_default
  doc: "output directory; default: 'streme_out'"
  type: Directory?
  inputBinding:
    prefix: --o
- id: in_oc
  doc: "allow overwriting; default: 'streme_out'"
  type: string?
  inputBinding:
    prefix: --oc
- id: in_text
  doc: "output text only; overrides --o and --oc;\ndefault: create text, HTML and\
    \ XML files in <output_dir>"
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_dna
  doc: sequences use standard DNA alphabet (default)
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: sequences use standard RNA alphabet
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_protein
  doc: sequences use standard protein alphabet
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_alph
  doc: "sequences use alphabet defined in <alph_file>;\nconverts to uppercase unless\
    \ both cases in core"
  type: File?
  inputBinding:
    prefix: --alph
- id: in_min_w
  doc: "minimum width for motifs (must be >= 3);\ndefault: 8"
  type: long?
  inputBinding:
    prefix: --minw
- id: in_max_w
  doc: "maximum width for motifs (must be <= 30);\ndefault: 15"
  type: long?
  inputBinding:
    prefix: --maxw
- id: in_sets_minwidth_maxwidth
  doc: "sets <minwidth> and <maxwidth> to <w> (must be <= 30);\ndefault: see --minw\
    \ and --maxw"
  type: long?
  inputBinding:
    prefix: --w
- id: in_n_eval
  doc: "evaluate <neval> seeds of each width;\ndefault: 25"
  type: long?
  inputBinding:
    prefix: --neval
- id: in_nref
  doc: "refine <nref> evaluated seeds of each width;\nnref==0 means just evaluate\
    \ single best seed;\ndefault: 4"
  type: long?
  inputBinding:
    prefix: --nref
- id: in_niter
  doc: "iterate refinement at most <niter> times per seed;\ndefault: 20"
  type: long?
  inputBinding:
    prefix: --niter
- id: in_pvt
  doc: "stop if hold-out set p-value greater than <pvt>\n(see --patience and --hofract,\
    \ below);\noverrides --nmotifs;\ndefault: 0.05"
  type: double?
  inputBinding:
    prefix: --pvt
- id: in_patience
  doc: "quit after <patience> consecutive motifs exceed <pvt>;\ndefault: 3"
  type: long?
  inputBinding:
    prefix: --patience
- id: in_n_motifs
  doc: "stop if <nmotifs> motifs have been output;\noverrides --pvt if > 0;\ndefault:\
    \ quit when new motif p-values exceed <pvt>"
  type: long?
  inputBinding:
    prefix: --nmotifs
- id: in_time
  doc: "quit before <t> CPU seconds consumed;\ndefault: no time limit"
  type: string?
  inputBinding:
    prefix: --time
- id: in_total_length
  doc: "truncate each sequence set to length <len>;\ndefault: 0 (do not truncate)"
  type: long?
  inputBinding:
    prefix: --totallength
- id: in_ho_fract
  doc: "fraction of sequences in hold-out set;\ndefault: 0.1"
  type: double?
  inputBinding:
    prefix: --hofract
- id: in_seed
  doc: "random seed for shuffling sequences;\ndefault: 0"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_desc
  doc: include this description text in HTML
  type: string?
  inputBinding:
    prefix: --desc
- id: in_d_file
  doc: "include contents of this description file in HTML,\noverrides --desc"
  type: File?
  inputBinding:
    prefix: --dfile
- id: in_verbosity
  doc: "|2|3|4|5    level of diagnostic output (default: 2)\n1: none 2: helpful 3:\
    \ debug 4: tons 5: ludicrous\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: "output directory; default: 'streme_out'"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- streme
