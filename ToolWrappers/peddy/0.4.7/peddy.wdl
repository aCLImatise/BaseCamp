version 1.0

task Peddy {
  input {
    Boolean? plot
    String vcf
    String ped
  }
  command <<<
    peddy \
      ~{vcf} \
      ~{ped} \
      ~{if (plot) then "--plot" else ""}
  >>>
  parameter_meta {
    plot: "-p, --procs INTEGER             number of processors to use\\n--prefix TEXT                   prefix for output files (default is basename\\nof vcf)\\n--each INTEGER                  sample every nth value from the selected\\nsites instead of every value to speed\\nprocessing.\\n--sites TEXT                    The path to a file with alternative sites to\\nuse for calculating relatedness in format\\n1:234234 1:45345345... with\\nchrom:pos[:ref:alt] on each line. The\\nspecial-case of 'hg38' for this will use\\nhg38 sites shipped with peddy.\\n--loglevel [DEBUG|INFO|WARNING|ERROR|CRITICAL]\\nSet the level of log output.  [default:\\nINFO]\\n--version                       Show the version and exit.\\n-h, --help                      Show this message and exit.\\n"
    vcf: ""
    ped: ""
  }
  output {
    File out_stdout = stdout()
  }
}