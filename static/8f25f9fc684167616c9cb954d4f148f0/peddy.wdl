version 1.0

task Peddy {
  input {
    Int? procs
    String? prefix
    Int? each
    File? sites
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
      ~{if (loglevel) then "--loglevel" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    procs: "number of processors to use"
    prefix: "prefix for output files (default is basename\\nof vcf)"
    each: "sample every nth value from the selected\\nsites instead of every value to speed\\nprocessing."
    sites: "The path to a file with alternative sites to\\nuse for calculating relatedness in format\\n1:234234 1:45345345... with\\nchrom:pos[:ref:alt] on each line. The\\nspecial-case of 'hg38' for this will use\\nhg38 sites shipped with peddy."
    loglevel: "[DEBUG|INFO|WARNING|ERROR|CRITICAL]\\nSet the level of log output.  [default:\\nINFO]"
    vcf: ""
    ped: ""
  }
  output {
    File out_stdout = stdout()
  }
}