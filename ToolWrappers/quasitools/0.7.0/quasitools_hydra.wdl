version 1.0

task QuasitoolsHydra {
  input {
    Directory? output_dir
    String forward
    String? reverse
  }
  command <<<
    quasitools hydra \
      ~{forward} \
      ~{reverse} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "[required]\\n-m, --mutation_db FILE\\n-rt, --reporting_threshold INTEGER RANGE\\nMinimum mutation frequency percent to\\nreport.\\n-gc, --generate_consensus       Generate a mixed base consensus sequence.\\n-cp, --consensus_pct INTEGER RANGE\\nMinimum percentage a base needs to be\\nincorporated into the consensus sequence.\\n-q, --quiet                     Suppress all normal output.\\n-tr, --trim_reads               Iteratively trim reads based on filter\\nvalues if enabled. Remove reads which do not\\nmeet filter values if disabled.\\n-mr, --mask_reads               Mask low coverage regions in reads if below\\nminimum read quality. This option and --ns\\ncannot be both enabled simultaneously.\\n-rq, --min_read_qual INTEGER    Minimum quality for a position in a read to\\nbe masked.\\n-lc, --length_cutoff INTEGER    Reads which fall short of the specified\\nlength will be filtered out.\\n-sc, --score_cutoff INTEGER     Reads that have a median or mean quality\\nscore (depending on the score type\\nspecified) less than the score cutoff value\\nwill be filtered out.\\n-me, --median / -mn, --mean     Use either median score (default) or mean\\nscore for the score cutoff value.\\n-n, --ns                        Flag to enable the filtering of n's.  This\\noption and --mask_reads cannot be both\\nenabled simultaneously.\\n-e, --error_rate FLOAT          Error rate for the sequencing platform.\\n-vq, --min_variant_qual INTEGER\\nMinimum quality for variant to be considered\\nlater on in the pipeline.\\n-md, --min_dp INTEGER           Minimum required read depth for variant to\\nbe considered later on in the pipeline.\\n-ma, --min_ac INTEGER           The minimum required allele count for\\nvariant to be considered later on in the\\npipeline.\\n-mf, --min_freq FLOAT           The minimum required frequency for mutation\\nto be considered in drug resistance report.\\n-i, --id TEXT                   Specify FASTA sequence identifier to be used\\nin the consensus report.\\n--help                          Show this message and exit.\\n"
    forward: ""
    reverse: ""
  }
  output {
    File out_stdout = stdout()
  }
}