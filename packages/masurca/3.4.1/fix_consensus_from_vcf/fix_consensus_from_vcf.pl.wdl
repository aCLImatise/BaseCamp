version 1.0

task FixConsensusFromVcfpl {
  command <<<
    fix_consensus_from_vcf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}