version 1.0

task Peddy {
  input {
    Int? procs
    String? prefix
    Int? each
    String? sites
    Boolean? loglevel
    String vcf
    String ped
  }
  command <<<
    peddy \
      ~{vcf} \
      ~{ped} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(each) then ("--each " +  '"' + each + '"') else ""} \
      ~{if defined(sites) then ("--sites " +  '"' + sites + '"') else ""} \
      ~{true="--loglevel" false="" loglevel}
  >>>
  parameter_meta {
    procs: "number of processors to use"
    prefix: "prefix for output files (default is basename of vcf)"
    each: "sample every nth value from the selected sites instead of every value to speed processing."
    sites: "The path to a file with alternative sites to use for calculating relatedness in format 1:234234 1:45345345... with chrom:pos[:ref:alt] on each line. The special-case of 'hg38' for this will use hg38 sites shipped with peddy."
    loglevel: "[DEBUG|INFO|WARNING|ERROR|CRITICAL] Set the level of log output.  [default: INFO]"
    vcf: ""
    ped: ""
  }
}