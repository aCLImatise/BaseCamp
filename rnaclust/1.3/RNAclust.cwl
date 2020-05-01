#!/usr/bin/env cwl-runner

baseCommand:
- RNAclust.pl
class: CommandLineTool
cwlVersion: v1.0
id: rnaclust.pl
inputs:
- doc: <file name>                     FASTA file (required)
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
- doc: <dir name>                      Target directory TGTDIR (required)
  id: dir
  inputBinding:
    prefix: --dir
  type: boolean
- doc: '<integer>                       Number of CPUs available on your machine.
    Calls to locarna and  RNAfold will be distributed equally on those CPUs. (default:
    1) (optional)'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: boolean
- doc: Stop after dotplots are created. This option is useful if  calculation of pairwise
    alignments will be distributed among  different machines.  (optional)
  id: dp_only
  inputBinding:
    prefix: --dponly
  type: boolean
- doc: <dir>                           Directory of dotplots. Use this option in case
    you distribute the  calculation of pairwise alignments among different machines
    using --start and --end options. (optional)
  id: dp_dir
  inputBinding:
    prefix: --dpdir
  type: boolean
- doc: <integer>                       Start with pairwise alignment i. (optional)
  id: start
  inputBinding:
    prefix: --start
  type: boolean
- doc: <integer>                       Stop with pairwise alignment j. (optional,
    except --start is specified)
  id: end
  inputBinding:
    prefix: --end
  type: boolean
- doc: Use this option after all pairwise alignments have been computed  on different
    machines (options --start, --end) in order to generate  the hierarchical cluster-tree.
    The pairwise alignments must be moved  to one 'paligs' directory beforehand. (optional)
  id: tree
  inputBinding:
    prefix: --tree
  type: boolean
- doc: 'Final cluster-tree is traversed and multiple alignment for each internal  node
    is computed progressively, default: no  (optional)'
  id: malig
  inputBinding:
    prefix: --malig
  type: boolean
- doc: Starts RNAsoup immediatly after computing the pairwise alignments and  the
    hierarchical tree. Results are written to the subfold 'rnasoup'.  Activates the
    --malig option. (optional)
  id: rna_soup
  inputBinding:
    prefix: --rnasoup
  type: boolean
- doc: Starts just RNAsoup on an existing RNAclust directory. Activates --malig  if
    there are no multiple alignments available. Writes RNAsoup output to a  subfolder
    called 'rnasoup'. (optional)
  id: rna_soup_only
  inputBinding:
    prefix: --rnasoup-only
  type: boolean
- doc: Appends the sequences in the fasta file to an existing cluster tree. The  folder
    containing the existing tree is defined by --dir. A subfolder,  named 'additionalSeqs',
    containing the new tree and additional files will  be created there. This function
    is still experimental, not all combinations  of parameter will work. (optional)
  id: add_sequence
  inputBinding:
    prefix: --addSequence
  type: boolean
- doc: <"locarna options">          Options passed directly to locarna (must be given
    as one string) (optional)
  id: loca_rna_opts
  inputBinding:
    prefix: --locarna-opts
  type: boolean
- doc: <"mlocarna options">        Options passed directly to mlocarna (must be given
    as one string).  mlocarna is used if multiple alignments for the internal nodes
    will be  calculated (see --malig). (optional)
  id: mlo_carna_opts
  inputBinding:
    prefix: --mlocarna-opts
  type: boolean
- doc: full documentation (optional)
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Use the rnaclust, rnasoup and pgma binaries from a local installation  instead
    of the global one.
  id: local_bin
  inputBinding:
    prefix: --localbin
  type: File
