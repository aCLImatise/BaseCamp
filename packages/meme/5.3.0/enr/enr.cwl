class: CommandLineTool
id: enr.cwl
inputs:
- id: in_positive_sequence_file
  doc: positive sequence file name (required)
  type: File?
  inputBinding:
    prefix: --p
- id: in_motif_file_name
  doc: motif file name (required, may be repeated)
  type: File?
  inputBinding:
    prefix: --m
- id: in_obj_fun
  doc: "|cd           objective function (<objfun>)\nde : Differential Enrichment\n\
    cd : Central Distance\ndefault: de"
  type: string?
  inputBinding:
    prefix: --objfun
- id: in_negative_sequence_file
  doc: "negative sequence file name;\ndefaults: if --n is not given, then STREME\n\
    creates negative sequences as follows:\n<objfun> = de, shuffle positive sequences\n\
    = cd, no negative sequences allowed"
  type: File?
  inputBinding:
    prefix: --n
- id: in_km_er
  doc: "shuffle positive sequences preserving k-mers\nand the positions of the non-core\
    \ characters\ndefault: 3 (DNA), 3 (RNA), 1 (Prot), 1 (custom)\ndefault: create\
    \ text, HTML and XML files in <output_dir>"
  type: long?
  inputBinding:
    prefix: --kmer
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
- id: in_ho_fract
  doc: "fraction of sequences in hold-out set;\ndefault: 0.1"
  type: double?
  inputBinding:
    prefix: --hofract
- id: in_seed
  doc: "random seed for shuffling sequences;\ndefault: -1718334814"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_b_file
  doc: 'background model file; default: motif file freqs'
  type: File?
  inputBinding:
    prefix: --bfile
- id: in_pseudo_count
  doc: "pseudocount for creating PWMs from motifs;\ndefault: 0"
  type: long?
  inputBinding:
    prefix: --pseudocount
- id: in_inc
  doc: "name pattern to select as motif; may be\nrepeated; default: all motifs are\
    \ used"
  type: string?
  inputBinding:
    prefix: --inc
- id: in_exc
  doc: "name pattern to exclude as motif; may be\nrepeated; default: all motifs are\
    \ used"
  type: string?
  inputBinding:
    prefix: --exc
- id: in_verbosity
  doc: '|2|3|4|5    level of diagnostic output (default: -1718334814)'
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- enr
