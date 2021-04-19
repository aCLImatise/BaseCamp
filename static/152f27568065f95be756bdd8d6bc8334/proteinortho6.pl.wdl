version 1.0

task Proteinortho6pl {
  input {
    Boolean? project
    Boolean? cpus
    Boolean? ram
    Boolean? silent
    Boolean? temp
    Boolean? keep
    Boolean? force
    Boolean? clean
    Boolean? step
    Boolean? isoform
    Boolean? blast_program_need
    Boolean? check_fast_a
    Boolean? _evalue_blast
    Boolean? self_blast
    Boolean? sim
    Boolean? identity
    Boolean? cov
    Boolean? subpara_blast
    Boolean? synteny
    Boolean? dups
    Boolean? cs
    Boolean? alpha
    Boolean? singles
    Boolean? conn
    Boolean? xml
    Boolean? purity
    Boolean? mcl
    Boolean? no_graph
    Boolean? desc
    Boolean? debug
    Boolean? bin_path
    Int fast_a_one
    Int fast_a_two
    String? fast_a_dot_dot_dot
  }
  command <<<
    proteinortho6_pl \
      ~{fast_a_one} \
      ~{fast_a_two} \
      ~{fast_a_dot_dot_dot} \
      ~{if (project) then "-project" else ""} \
      ~{if (cpus) then "-cpus" else ""} \
      ~{if (ram) then "-ram" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (temp) then "-temp" else ""} \
      ~{if (keep) then "-keep" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (isoform) then "-isoform" else ""} \
      ~{if (blast_program_need) then "-p" else ""} \
      ~{if (check_fast_a) then "-checkfasta" else ""} \
      ~{if (_evalue_blast) then "-e" else ""} \
      ~{if (self_blast) then "-selfblast" else ""} \
      ~{if (sim) then "-sim" else ""} \
      ~{if (identity) then "-identity" else ""} \
      ~{if (cov) then "-cov" else ""} \
      ~{if (subpara_blast) then "-subparaBlast" else ""} \
      ~{if (synteny) then "-synteny" else ""} \
      ~{if (dups) then "-dups" else ""} \
      ~{if (cs) then "-cs" else ""} \
      ~{if (alpha) then "-alpha" else ""} \
      ~{if (singles) then "-singles" else ""} \
      ~{if (conn) then "-conn" else ""} \
      ~{if (xml) then "-xml" else ""} \
      ~{if (purity) then "-purity" else ""} \
      ~{if (mcl) then "-mcl" else ""} \
      ~{if (no_graph) then "-nograph" else ""} \
      ~{if (desc) then "-desc" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (bin_path) then "-binpath" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0"
  }
  parameter_meta {
    project: "=    prefix for all result file names [default: myproject]"
    cpus: "=       number of processors to use [default: auto]"
    ram: "=        maximal used ram threshold for LAPACK and the input graph in MB [default: 75% of the free memory]"
    silent: "sets verbose to 0"
    temp: "=       path for temporary files [default: working directory]"
    keep: "stores temporary blast results for reuse (same -project= name is mandatory)"
    force: "forces the recalculation of the blast results in any case in step=2. Also forces the recreation of the database generation in step=1"
    clean: "remove all unnecessary files after processing"
    step: "=       1 -> generate indices\\n2 -> run blast (and ff-adj, if -synteny is set)\\n3 -> clustering\\n0 -> all (default)"
    isoform: "=    Enables the isoform merging. All isoforms are united to a single entity and treated as one. Extracting a group with an isoform will result in all isoforms.\\nncbi -> if the word 'isoform' is found\\nuniprot -> 'Isoform of XYZ' (You need to add the *_additional.fasta files to the analysis)\\ntrinity -> using '_iX' suffix\\nFor more information have a look at:\\nhttps://gitlab.com/paulklemm_PHD/proteinortho/-/wikis/FAQ#how-does-the-isoform-work"
    blast_program_need: "=          blast program [default: diamond]\\n{blastp|blastn|tblastx|blastp_legacy|blastn_legacy|tblastx_legacy|diamond|usearch|ublast|lastp|lastn|rapsearch|topaz|blatp|blatn|mmseqsp|mmseqsn}\\nThe program need to be installed first.\\nA suffix 'p' or 'n' indicates aminoacid fasta files (p) or nucleotide fasta files (n).\\nThe '_legacy' suffix indicates legacy blastall (otherwise blast+ is used).\\nautoblast : automatically detects the blast+ program (blastp,blastn,tblastn,blastx) depending on the input (can also be mixed together!)\\nblast*|tblastx : standard blast+ family (blastp : protein files, blastn : dna files)\\nblast*_legacy : legacy blast family (blastall)\\ndiamond : Only for protein files! standard diamond procedure and for genes/proteins of length >40 with the additional --sensitive flag\\nusearch : usearch_local procedure with -id 0 (minimum identity percentage).\\nublast : usearch_ublast procedure.\\nlastn : standard lastal. Only for dna files!\\nlastp : lastal using -p and BLOSUM62 scoring matrix. Only for protein files!\\nrapsearch : Only for protein files!\\ntopaz : Only for protein files!\\nblat* : Blat family. blatp : For protein files! blatn : For dna files! blatx : For dna files!\\nmmseqs* : mmseqs family. mmseqsp : For protein files! mmseqsn : For dna files! blatx : For dna files!"
    check_fast_a: "Checks if the given fasta files are compatible with the algorithm of -p"
    _evalue_blast: "=          E-value for blast [default: 1e-05]"
    self_blast: "apply selfblast, detects paralogs without orthologs"
    sim: "=        min. reciprocal similarity for additional hits (0..1) [default: 0.95]\\n1 : only the best reciprocal hits are reported\\n0 : all possible reciprocal blast matches (within the -evalue) are reported"
    identity: "=   min. percent identity of best blast hits [default: 25]"
    cov: "=        min. coverage of best blast alignments in % [default: 50]"
    subpara_blast: "=    additional parameters for the search tool\\nexample -subparaBlast='-seg no' or -subparaBlast='--more-sensitive' for diamond"
    synteny: "activate PoFF extension to separate similar sequences print\\nby contextual adjacencies (requires .gff for each .fasta)"
    dups: "=       PoFF: number of reiterations for adjacencies heuristic,\\nto determine duplicated regions (default: 0)"
    cs: "=         PoFF: Size of a maximum common substring (MCS) for\\nadjacency matches (default: 3)"
    alpha: "=      PoFF: weight of adjacencies vs. sequence similarity\\n(default: 0.5)"
    singles: "report singleton genes without any hit"
    conn: "=       min. algebraic connectivity [default: 0.1]"
    xml: "produces an OrthoXML formatted file of the *.proteinortho.tsv file."
    purity: "=     avoid spurious graph assignments, the higher the more uncertain edges are cut [0-1, default: 1e-07]"
    mcl: "enables the mcl algorithm for clustering instead of power iteration or lapacks routine. (needs mcl to be installed)"
    no_graph: "do not generate .proteinortho-graph file (pairwise orthology relations)"
    desc: "write description files (for NCBI FASTA input only)"
    debug: "gives detailed information for bug tracking"
    bin_path: "=    path to your directory of local programs that are not available globally (this should not be needed)"
    fast_a_one: ""
    fast_a_two: ""
    fast_a_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}