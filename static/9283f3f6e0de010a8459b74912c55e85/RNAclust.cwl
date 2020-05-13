class: CommandLineTool
id: RNAclust.pl.cwl
inputs:
- id: fast_a
  doc: <file name>                     FASTA file (required)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: dir
  doc: <dir name>                      Target directory TGTDIR (required)
  type: boolean
  inputBinding:
    prefix: --dir
- id: cpu
  doc: '<integer>                       Number of CPUs available on your machine.
    Calls to locarna and  RNAfold will be distributed equally on those CPUs. (default:
    1) (optional)'
  type: boolean
  inputBinding:
    prefix: --cpu
- id: dp_only
  doc: Stop after dotplots are created. This option is useful if  calculation of pairwise
    alignments will be distributed among  different machines.  (optional)
  type: boolean
  inputBinding:
    prefix: --dponly
- id: dp_dir
  doc: <dir>                           Directory of dotplots. Use this option in case
    you distribute the  calculation of pairwise alignments among different machines
    using --start and --end options. (optional)
  type: boolean
  inputBinding:
    prefix: --dpdir
- id: start
  doc: <integer>                       Start with pairwise alignment i. (optional)
  type: boolean
  inputBinding:
    prefix: --start
- id: end
  doc: <integer>                       Stop with pairwise alignment j. (optional,
    except --start is specified)
  type: boolean
  inputBinding:
    prefix: --end
- id: tree
  doc: Use this option after all pairwise alignments have been computed  on different
    machines (options --start, --end) in order to generate  the hierarchical cluster-tree.
    The pairwise alignments must be moved  to one 'paligs' directory beforehand. (optional)
  type: boolean
  inputBinding:
    prefix: --tree
- id: malig
  doc: 'Final cluster-tree is traversed and multiple alignment for each internal  node
    is computed progressively, default: no  (optional)'
  type: boolean
  inputBinding:
    prefix: --malig
- id: rna_soup
  doc: Starts RNAsoup immediatly after computing the pairwise alignments and  the
    hierarchical tree. Results are written to the subfold 'rnasoup'.  Activates the
    --malig option. (optional)
  type: boolean
  inputBinding:
    prefix: --rnasoup
- id: rna_soup_only
  doc: Starts just RNAsoup on an existing RNAclust directory. Activates --malig  if
    there are no multiple alignments available. Writes RNAsoup output to a  subfolder
    called 'rnasoup'. (optional)
  type: boolean
  inputBinding:
    prefix: --rnasoup-only
- id: add_sequence
  doc: Appends the sequences in the fasta file to an existing cluster tree. The  folder
    containing the existing tree is defined by --dir. A subfolder,  named 'additionalSeqs',
    containing the new tree and additional files will  be created there. This function
    is still experimental, not all combinations  of parameter will work. (optional)
  type: boolean
  inputBinding:
    prefix: --addSequence
- id: loca_rna_opts
  doc: <"locarna options">          Options passed directly to locarna (must be given
    as one string) (optional)
  type: boolean
  inputBinding:
    prefix: --locarna-opts
- id: mlo_carna_opts
  doc: <"mlocarna options">        Options passed directly to mlocarna (must be given
    as one string).  mlocarna is used if multiple alignments for the internal nodes
    will be  calculated (see --malig). (optional)
  type: boolean
  inputBinding:
    prefix: --mlocarna-opts
- id: man
  doc: full documentation (optional)
  type: boolean
  inputBinding:
    prefix: --man
- id: local_bin
  doc: Use the rnaclust, rnasoup and pgma binaries from a local installation  instead
    of the global one.
  type: File
  inputBinding:
    prefix: --localbin
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAclust.pl
