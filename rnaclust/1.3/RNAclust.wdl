version 1.0

task RNAclust.pl {
  input {
    Boolean? fast_a
    Boolean? dir
    Boolean? cpu
    Boolean? dp_only
    Boolean? dp_dir
    Boolean? start
    Boolean? end
    Boolean? tree
    Boolean? malig
    Boolean? rna_soup
    Boolean? rna_soup_only
    Boolean? add_sequence
    Boolean? loca_rna_opts
    Boolean? mlo_carna_opts
    Boolean? man
    File? local_bin
  }
  command <<<
    RNAclust.pl \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--dir" false="" dir} \
      ~{true="--cpu" false="" cpu} \
      ~{true="--dponly" false="" dp_only} \
      ~{true="--dpdir" false="" dp_dir} \
      ~{true="--start" false="" start} \
      ~{true="--end" false="" end} \
      ~{true="--tree" false="" tree} \
      ~{true="--malig" false="" malig} \
      ~{true="--rnasoup" false="" rna_soup} \
      ~{true="--rnasoup-only" false="" rna_soup_only} \
      ~{true="--addSequence" false="" add_sequence} \
      ~{true="--locarna-opts" false="" loca_rna_opts} \
      ~{true="--mlocarna-opts" false="" mlo_carna_opts} \
      ~{true="--man" false="" man} \
      ~{if defined(local_bin) then ("--localbin " +  '"' + local_bin + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "<file name>                     FASTA file (required)"
    dir: "<dir name>                      Target directory TGTDIR (required)"
    cpu: "<integer>                       Number of CPUs available on your machine. Calls to locarna and  RNAfold will be distributed equally on those CPUs. (default: 1) (optional)"
    dp_only: "Stop after dotplots are created. This option is useful if  calculation of pairwise alignments will be distributed among  different machines.  (optional)"
    dp_dir: "<dir>                           Directory of dotplots. Use this option in case you distribute the  calculation of pairwise alignments among different machines using --start and --end options. (optional)"
    start: "<integer>                       Start with pairwise alignment i. (optional)"
    end: "<integer>                       Stop with pairwise alignment j. (optional, except --start is specified)"
    tree: "Use this option after all pairwise alignments have been computed  on different machines (options --start, --end) in order to generate  the hierarchical cluster-tree. The pairwise alignments must be moved  to one 'paligs' directory beforehand. (optional)"
    malig: "Final cluster-tree is traversed and multiple alignment for each internal  node is computed progressively, default: no  (optional)"
    rna_soup: "Starts RNAsoup immediatly after computing the pairwise alignments and  the hierarchical tree. Results are written to the subfold 'rnasoup'.  Activates the --malig option. (optional)"
    rna_soup_only: "Starts just RNAsoup on an existing RNAclust directory. Activates --malig  if there are no multiple alignments available. Writes RNAsoup output to a  subfolder called 'rnasoup'. (optional)"
    add_sequence: "Appends the sequences in the fasta file to an existing cluster tree. The  folder containing the existing tree is defined by --dir. A subfolder,  named 'additionalSeqs', containing the new tree and additional files will  be created there. This function is still experimental, not all combinations  of parameter will work. (optional)"
    loca_rna_opts: "<\"locarna options\">          Options passed directly to locarna (must be given as one string) (optional)"
    mlo_carna_opts: "<\"mlocarna options\">        Options passed directly to mlocarna (must be given as one string).  mlocarna is used if multiple alignments for the internal nodes will be  calculated (see --malig). (optional)"
    man: "full documentation (optional)"
    local_bin: "Use the rnaclust, rnasoup and pgma binaries from a local installation  instead of the global one."
  }
}