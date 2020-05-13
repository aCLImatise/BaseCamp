class: CommandLineTool
id: phastMotif.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msa_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: t
  doc: (Required unless -m or -p) Use specified tree topology for all phylogenetic
    models (Newick format).
  type: File
  inputBinding:
    prefix: -t
- id: i
  doc: Input format for alignment.  May be FASTA, PHYLIP, MPM, SS, or MAF (default
    FASTA).
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: Read background model from specified file (.mod format). By default, the background
    model is estimated in a preprocessing step, by pooling all data.
  type: File
  inputBinding:
    prefix: -b
- id: s
  doc: Estimate a separate background model for each multiple alignment. (Not yet
    implemented.)
  type: boolean
  inputBinding:
    prefix: -s
- id: k
  doc: Learn motifs of the specified size (default is 10).
  type: long
  inputBinding:
    prefix: -k
- id: b
  doc: Report best <n> motifs (default 3).
  type: string
  inputBinding:
    prefix: -B
- id: m
  doc: MEME mode.  Use multinomial rather than phylogenetic models.  Causes multiple
    alignments to be ignored -- any gaps are discarded and all sequences are assumed
    independent.
  type: boolean
  inputBinding:
    prefix: -m
- id: d
  doc: <+lst> Use the discriminative training method of Segal et al. (RECOMB'02),
    rather than EM.  The specified list should contain the filenames from msa_list
    that are to be considered *positive* examples (containing the desired motif);
    all others will be considered negative examples.  Can be used with or without
    -m.
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: Use "profile" models rather than phylogenetic models (characters in each alignment
    column assumed independent).  The resulting model is a hybrid of the full model
    and MEME's model.  Essentially, it uses the multiple alignments but not the phylogeny.  NOT
    YET IMPLEMENTED.
  type: boolean
  inputBinding:
    prefix: -p
- id: n
  doc: Perform <n> random restarts and report the motif with highest likelihood.  Default
    number is 10.  Ignored with -I, -P, and -R unless -S is specified (see below).
  type: string
  inputBinding:
    prefix: -n
- id: i
  doc: Run the algorithm after a "soft" initialization with each of the consensus
    sequences in the specified list. At each position, <pc> pseudocounts (see -c)
    are given to the consensus base and 1 pseudocount to all other bases.  Each string
    must have length at most equal to the size of the motif.  If shorter, it is used
    as a "seed" for a motif, with flanking positions treated as wildcards.
  type: string
  inputBinding:
    prefix: -I
- id: p
  doc: <x,y>  Initialize with the x most prevalent y-tuples.  A soft initialization
    is performed, as above.  If y is less than the motif size, y-tuples are used as
    a "seed" for a motif, as above.
  type: boolean
  inputBinding:
    prefix: -P
- id: r
  doc: <x,y>  Initialize with a random sample of x y-tuples.  A soft initialization
    is performed, as above.  If y is less than the motif size, y-tuples are used as
    a "seed" for a motif, as above.
  type: boolean
  inputBinding:
    prefix: -R
- id: w
  doc: (for use with -I, -P, -R) Winnow initialization sequences to the top <n> based
    on the unmaximized likelihood.
  type: string
  inputBinding:
    prefix: -w
- id: c
  doc: (for use with -I, -P, -R) Number of pseudocounts for consensus bases (default
    5).
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: (for use with -I, -P, -R) Instead of doing a deterministic initialization based
    on a consensus sequence, sample parameters from a Dirichlet distribution defined
    by the pseudocounts (see -c).  In this case, random restarts are performed, as
    specified by -n.
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: Use the specified prefix for all output files (dflt. "phastm").
  type: string
  inputBinding:
    prefix: -o
- id: h
  doc: Produce HTML formatted output, in addition to ordinary output. One file is
    produced per predicted motif, as well as a  single HTML-formatted summary file.
  type: boolean
  inputBinding:
    prefix: -H
- id: d
  doc: Produce a BED file with predicted motifs, for use in the  UCSC browser.  Currently,
    sequence names must be formatted such as "chr10:102553847-102554897+", with the
    final '+' or '-' indicating strand.
  type: boolean
  inputBinding:
    prefix: -D
- id: x
  doc: (For use with -H or -D) Suppress ordinary output to stdout.
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- phastMotif
