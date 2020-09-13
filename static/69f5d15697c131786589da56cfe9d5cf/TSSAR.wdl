version 1.0

task TSSAR {
  input {
    Boolean? libp
    Boolean? fast_a
    Boolean? min_peak
    Boolean? pval
    Boolean? winsize
    Boolean? verbose
    Boolean? pro_rata
    Boolean? score
    Boolean? no_cluster
    Boolean? range
    Boolean? clean
    Boolean? tmpdir
    Boolean? man
  }
  command <<<
    TSSAR \
      ~{if (libp) then "--libP" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (min_peak) then "--minPeak" else ""} \
      ~{if (pval) then "--pval" else ""} \
      ~{if (winsize) then "--winSize" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (pro_rata) then "--prorata" else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if (no_cluster) then "--nocluster" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    libp: "*libraryP.sam* AND --libM *libraryM.sam*\\nInput library (P .. Plus; M .. Minus) in SAM format. The plus\\nlibrary is the one with enriched TSS (for dRNA-seq this means that\\nthe plus library is the treated library, while the minus library is\\nthe untreated library)"
    fast_a: "*genome.fa* OR --g_size *INT*\\nEither the location of reference genome sequence in fasta file\\nformat OR the genome size in *INT*. The fasta file is only used to\\nparse the genome size so just one of the two must be specified."
    min_peak: "*INT*\\nMinimal Peak size in *INT*. Only positions where read start count in\\nthe (+)library is greater or equal then *INT* are evaluated to be a\\nTSS. Positions with less reads are seen as backgroound noise and not\\nconsidered. Default is *3*."
    pval: "*FLOAT*\\nMaximal P-value for each position to be annotated as a TSS. Default\\nis *1e-04*."
    winsize: "*INT*\\nSize of the window which slides over the genome and defines the\\nstatistical properties of the local model. Default is *1,000*."
    verbose: "If set, some progress reports are printed to STDERR during\\ncomputation."
    pro_rata: "If set, the information from the SAM file how many times a read was\\nmapped to the genome is used, if present. If the read maps *n* times\\nto the genome, each position is counted only *1/n* times. Usefull in\\ncombination with e.g. segemehl mapper, which can report suboptimal\\nmapping positions and/or reports all location where a read maps\\noptimally. Default is off."
    score: "*p|d*\\nIf score mode is *p* the p-value is used as score in the TSS BED\\nfile. If score mode is *d* the peak difference is used as score in\\nthe TSS BED file. Default is *d*. Also used for clustering, which\\nadvices to use 'd', since the p-value often becomes zero for\\nconsecutive positions, thus disabling a proper merging of\\nconsecutive positions to the best one."
    no_cluster: "| --cluster\\nIf --nocluster is set all positions annotated as TSS are reported.\\nIf --cluster is set consecutive TSS positions are clustered and only\\nthe 'best' position is reported. 'Best' position depends on the\\nsetting of --score (see above). Either the position with the lowest\\np-Value or the position with the highest peak difference between\\nplus and minus library is reported. Default is --cluster. The option\\n--range defines the maximal distance for two significant positions\\nto be called 'consecutive'."
    range: "*INT*\\nThe maximal distance for two significant positions to be be\\nclustered together if option --cluster is set. Default is *3* nt. If\\n--cluster is set to --nocluster, --range is ignored."
    clean: "| --noclean\\nIf --clean is set, all temporary files which are created during the\\ncomputation are deleted afterwards. With --noclean they are stored.\\nMainly for debugging purpose. Default setting is --clean."
    tmpdir: "*DIR*\\nSpecifies where the temporary files should be stored. Default is\\n*/tmp*."
    man: "Print a long version of the man-page."
  }
  output {
    File out_stdout = stdout()
  }
}