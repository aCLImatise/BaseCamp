class: CommandLineTool
id: centrimo.cwl
inputs:
- id: in_output_directory_default
  doc: "output directory; default: 'centrimo_out'"
  type: Directory
  inputBinding:
    prefix: --o
- id: in_oc
  doc: "allow overwriting; default: 'centrimo_out'"
  type: string
  inputBinding:
    prefix: --oc
- id: in_neg
  doc: "plot motif distributions in this set as well\nin the <sequence file> (positive\
    \ sequences)\nand compute the relative enrichment"
  type: File
  inputBinding:
    prefix: --neg
- id: in_x_alph
  doc: "name of the file containing a custom alphabet,\nwhich specifies that motifs\
    \ should be converted;"
  type: File
  inputBinding:
    prefix: --xalph
- id: in_b_file
  doc: "0-order background frequency model for PWMs;\ndefault: base frequencies in\
    \ input sequences"
  type: long
  inputBinding:
    prefix: --bfile
- id: in_motif_pseudo
  doc: "pseudo-count to use creating PWMs;\ndefault: 5"
  type: long
  inputBinding:
    prefix: --motif-pseudo
- id: in_inc
  doc: "name pattern to select as motif; may be\nrepeated; default: all motifs are\
    \ used"
  type: string
  inputBinding:
    prefix: --inc
- id: in_exc
  doc: "name pattern to exclude as motif; may be\nrepeated; default: all motifs are\
    \ used"
  type: string
  inputBinding:
    prefix: --exc
- id: in_seq_len
  doc: "use sequences with this length; default: use\nsequences with the same length\
    \ as the first"
  type: long
  inputBinding:
    prefix: --seqlen
- id: in_score
  doc: "score threshold for PWMs, in bits;\nsequences without a site with score >=\
    \ <S>\nare ignored;\ndefault: 0.1"
  type: double
  inputBinding:
    prefix: --score
- id: in_use_lo_fraction
  doc: score threshold <S> is fraction of maximum log-odds
  type: boolean
  inputBinding:
    prefix: --use-lo-fraction
- id: in_use_p_values
  doc: use p-values instead of PWM scores
  type: boolean
  inputBinding:
    prefix: --use-pvalues
- id: in_norc
  doc: do not scan with the reverse complement motif
  type: boolean
  inputBinding:
    prefix: --norc
- id: in_sep
  doc: "scan separately with reverse complement motif;\n(implies --norc)"
  type: boolean
  inputBinding:
    prefix: --sep
- id: in_flip
  doc: "'flip' sequences so that matches on the\nreverse strand are 'reflected' around\
    \ center;\ndefault: do not flip sequences"
  type: boolean
  inputBinding:
    prefix: --flip
- id: in_optimize_score
  doc: "search for optimized score above the threshold\ngiven by '--score' argument.\
    \ Slow computation\ndue to multiple tests.\ndefault: use fixed score threshold"
  type: boolean
  inputBinding:
    prefix: --optimize-score
- id: in_max_reg
  doc: "maximum width of any region to consider;\ndefault: use the sequence length"
  type: long
  inputBinding:
    prefix: --maxreg
- id: in_min_reg
  doc: "minimum width of any region to consider;\nmust be less than <maxreg>;\ndefault:\
    \ 1 bp"
  type: long
  inputBinding:
    prefix: --minreg
- id: in_local
  doc: "compute the enrichment of all regions;\ndefault: enrichment of central regions\
    \ only"
  type: boolean
  inputBinding:
    prefix: --local
- id: in_cd
  doc: "distance to sequence center enrichment;\ndefault: region enrichment"
  type: boolean
  inputBinding:
    prefix: --cd
- id: in_e_thresh
  doc: "evalue threshold for including in results;\ndefault: 10"
  type: long
  inputBinding:
    prefix: --ethresh
- id: in_desc
  doc: "include the description in the output;\ndefault: no description"
  type: string
  inputBinding:
    prefix: --desc
- id: in_d_file
  doc: "use the file content as the description;\ndefault: no descriptionn"
  type: File
  inputBinding:
    prefix: --dfile
- id: in_no_seq
  doc: "do not store sequence IDs in HTML output;\ndefault: IDs are stored in the\
    \ HTML output"
  type: boolean
  inputBinding:
    prefix: --noseq
- id: in_verbosity
  doc: "[1|2|3|4]    verbosity of output: 1 (quiet) - 4 (dump);\ndefault: 2"
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: "output directory; default: 'centrimo_out'"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_default)
cwlVersion: v1.1
baseCommand:
- centrimo
