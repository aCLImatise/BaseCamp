class: CommandLineTool
id: phastMotif.cwl
inputs:
- id: in_required_use_specified
  doc: "(Required unless -m or -p) Use specified tree topology for\nall phylogenetic\
    \ models (Newick format)."
  type: File
  inputBinding:
    prefix: -t
- id: in_input_format_alignment
  doc: "Input format for alignment.  May be FASTA, PHYLIP, MPM, SS,\nor MAF (default\
    \ FASTA)."
  type: string
  inputBinding:
    prefix: -i
- id: in_read_background_model
  doc: "Read background model from specified file (.mod format).\nBy default, the\
    \ background model is estimated\nin a preprocessing step, by pooling all data."
  type: File
  inputBinding:
    prefix: -b
- id: in_estimate_separate_model
  doc: "Estimate a separate background model for each multiple alignment.\n(Not yet\
    \ implemented.)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_learn_motifs_specified
  doc: Learn motifs of the specified size (default is 10).
  type: long
  inputBinding:
    prefix: -k
- id: in_report_best_default
  doc: Report best <n> motifs (default 3).
  type: long
  inputBinding:
    prefix: -B
- id: in_meme_mode_multinomial
  doc: MEME mode.  Use multinomial rather than phylogenetic
  type: boolean
  inputBinding:
    prefix: -m
- id: in_use_models_modelscharacters
  doc: "Use \"profile\" models rather than phylogenetic models\n(characters in each\
    \ alignment column assumed\nindependent).  The resulting model is a hybrid of\
    \ the\nfull model and MEME's model.  Essentially, it uses the\nmultiple alignments\
    \ but not the phylogeny.  NOT YET IMPLEMENTED."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_perform_n_restarts
  doc: Perform <n> random restarts and report the motif with highest
  type: string
  inputBinding:
    prefix: -n
- id: in_specified_see_below
  doc: specified (see below).
  type: string
  inputBinding:
    prefix: -R
- id: in_run_algorithm_position
  doc: "Run the algorithm after a \"soft\" initialization with\neach of the consensus\
    \ sequences in the specified list.\nAt each position, <pc> pseudocounts (see -c)\
    \ are given\nto the consensus base and 1 pseudocount to all other\nbases.  Each\
    \ string must have length at most equal to\nthe size of the motif.  If shorter,\
    \ it is used as a\n\"seed\" for a motif, with flanking positions treated as\n\
    wildcards."
  type: long
  inputBinding:
    prefix: -I
- id: in_xy_initialize_most
  doc: "<x,y>  Initialize with the x most prevalent y-tuples.  A soft\ninitialization\
    \ is performed, as above.  If y is less\nthan the motif size, y-tuples are used\
    \ as a \"seed\" for\na motif, as above."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_p_r_winnow
  doc: "(for use with -I, -P, -R) Winnow initialization sequences\nto the top <n>\
    \ based on the unmaximized likelihood."
  type: string
  inputBinding:
    prefix: -w
- id: in_i_p_number
  doc: "(for use with -I, -P, -R) Number of pseudocounts for\nconsensus bases (default\
    \ 5)."
  type: long
  inputBinding:
    prefix: -c
- id: in_use_specified_prefix
  doc: Use the specified prefix for all output files (dflt. "phastm").
  type: string
  inputBinding:
    prefix: -o
- id: in_produce_html_formatted
  doc: "Produce HTML formatted output, in addition to ordinary output.\nOne file is\
    \ produced per predicted motif, as well as a\nsingle HTML-formatted summary file."
  type: File
  inputBinding:
    prefix: -H
- id: in_produce_bed_file
  doc: "Produce a BED file with predicted motifs, for use in the\nUCSC browser.  Currently,\
    \ sequence names must be\nformatted such as \"chr10:102553847-102554897+\", with\n\
    the final '+' or '-' indicating strand."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_use_h_suppress
  doc: (For use with -H or -D) Suppress ordinary output to stdout.
  type: boolean
  inputBinding:
    prefix: -x
- id: in_distributions_dot
  doc: The specified multiple alignments may
  type: string
  inputBinding:
    position: 0
- id: in_models_dot
  doc: Causes multiple alignments to be ignored -- any
  type: string
  inputBinding:
    position: 0
- id: in_independent_dot
  doc: -d <+lst> Use the discriminative training method of Segal et
  type: string
  inputBinding:
    position: 0
- id: in_examples_dot
  doc: Can be used with or without -m.
  type: string
  inputBinding:
    position: 0
- id: in_likelihood_dot
  doc: Default number is 10.  Ignored with -I, -P, and
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_produce_html_formatted
  doc: "Produce HTML formatted output, in addition to ordinary output.\nOne file is\
    \ produced per predicted motif, as well as a\nsingle HTML-formatted summary file."
  type: File
  outputBinding:
    glob: $(inputs.in_produce_html_formatted)
cwlVersion: v1.1
baseCommand:
- phastMotif
