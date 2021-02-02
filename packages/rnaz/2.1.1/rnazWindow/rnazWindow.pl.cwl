class: CommandLineTool
id: rnazWindow.pl.cwl
inputs:
- id: in_window
  doc: 'Size of the window (Default: 120)'
  type: long
  inputBinding:
    prefix: --window
- id: in_slide
  doc: 'Step size (Default: 120)'
  type: long
  inputBinding:
    prefix: --slide
- id: in_max_length
  doc: "Slice only alignments longer than N columns. This means blocks\nlonger than\
    \ the window size given by --window but shorter than N\nare kept intact and not\
    \ sliced. Per default this length is set\nto the window size given by --window\
    \ (or 120 by default)."
  type: boolean
  inputBinding:
    prefix: --max-length
- id: in_max_gap
  doc: "Maximum fraction of gaps. If a reference sequence is used (i.e.\n\"--no-reference\"\
    \ is not set), each sequence is compared to the\nreference sequence and if in\
    \ the pairwise comparison the\nfraction of columns with gaps is higher than X\
    \ the sequence is\ndiscarded. If no reference sequence is used, all sequences\
    \ with\na fraction of gaps higher than X are discarded. (Default: 0.25)"
  type: long
  inputBinding:
    prefix: --max-gap
- id: in_max_masked
  doc: "Maximum fraction of masked (=lowercase letters) in a sequence.\nAll sequences\
    \ with a fraction of more than X lowercase letters\nare discarded. This is usually\
    \ used for excluding repeat\nsequences marked by \"RepeatMasker\" but any other\
    \ information can\nbe encoded by using lowercase letters. (Default: 0.1)"
  type: long
  inputBinding:
    prefix: --max-masked
- id: in_min_id
  doc: "Discard alignment windows with an overall mean pairwise identity\nsmaller\
    \ than X%. (Default: 50)"
  type: long
  inputBinding:
    prefix: --min-id
- id: in_min_seqs
  doc: "Minimum number of sequences in an alignment. Discard any windows\nwith less\
    \ than N sequences (Default:2)."
  type: long
  inputBinding:
    prefix: --min-seqs
- id: in_max_seqs
  doc: "Maximum number of sequences in an alignment. If the number of\nsequences in\
    \ a window is higher than N, a subset of sequences is\nused with exactly N sequences.\
    \ The greedy algorithm of the\nprogram \"rnazSelectSeqs.pl\" is used which optimizes\
    \ for a user\nspecified mean pairwise identity (see \"--opt-id\"). (Default: 6)"
  type: long
  inputBinding:
    prefix: --max-seqs
- id: in_num_samples
  doc: "Number of different subsets of sequences that is sampled if\nthere are more\
    \ sequences in the alignment than \"--max-seqs\".\n(Default: 1)"
  type: long
  inputBinding:
    prefix: --num-samples
- id: in_min_length
  doc: "Minimum number of columns of an alignment slice. After removing\nsequences\
    \ from the alignment, ``all-gap\" columns are removed. If\nthe resulting alignment\
    \ has fewer than N columns, the complete\nalignment is discarded. Default: 50"
  type: long
  inputBinding:
    prefix: --min-length
- id: in_opt_id
  doc: "If the number of sequences has to be reduced (see \"--max-seqs\")\na subset\
    \ of sequences is chosen which is optimized for this\nvalue of mean pairwise identity.\
    \ (In percent, default: 80)"
  type: long
  inputBinding:
    prefix: --opt-id
- id: in_max_id
  doc: "One sequence from pairs with pairwise identity higher than X %\nthis is removed\
    \ (default: 99, i.e. only almost identical\nsequences are removed) NOT IMPLEMENTED"
  type: long
  inputBinding:
    prefix: --max-id
- id: in_forward
  doc: "--reverse\n--both-strands\nOutput forward, reverse complement or both of the\
    \ sequences in\nthe windows. Please note: \"RNAz\" has the same options, so if\
    \ you\nuse \"rnazWindow.pl\" for an RNAz screen, we recommend to set the\noption\
    \ directly in \"RNAz\" and leave the default here. (Default:\n---forward)\n--no-reference\n\
    By default the first sequence is interpreted as reference\nsequence. This means,\
    \ for example, that if the reference\nsequence is removed during filtering steps\
    \ the complete\nalignment is discarded. Also, if there are too many sequences\
    \ in\nthe alignment, the reference sequence is never removed when\nchoosing an\
    \ appropriate subset. Having a reference sequence is\ncrucial if you are doing\
    \ screens of genomic regions. For some\nother applications it might not be necessary\
    \ and in such cases\nyou can change the default behaviour by setting this option.\n\
    --no-rangecheck\nBy default, all sequences of all windows are discarded, if the\n\
    length or base composition is outside the training range of\nRNAz, independent\
    \ of the window-size commandline parameter.\nHowever with the flag --no-rangecheck\
    \ such sequences outside the\ntraining range are not discarded. As of version\
    \ 2.0, RNAz can\ncope with sequences outside this traning range. However the same\n\
    quality of the RNAz results cannot be guaranteed if sequences\noutside the default\
    \ range are present.\n--verbose\nVerbose output on STDERR, describing all performed\
    \ filtering\nsteps.\n-v, --version\nPrints version information and exits.\n-h,\
    \ --help\nPrints a short help message and exits.\n--man   Prints a detailed manual\
    \ page and exits.\n"
  type: boolean
  inputBinding:
    prefix: --forward
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnazWindow.pl
