version 1.0

task QueryConfig {
  input {
    String? machines
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    Boolean? comp_sets
    Boolean? components
    Boolean? long
  }
  command <<<
    query_config \
      ~{if defined(machines) then ("--machines " +  '"' + machines + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (comp_sets) then "--compsets" else ""} \
      ~{if (components) then "--components" else ""} \
      ~{if (long) then "--long" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/noresm:2.0.2--py37pl5262h736fc29_0"
  }
  parameter_meta {
    machines: "; if you specify more than one of these arguments,"
    debug: "Print debug information (very verbose) to file /query_config.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    comp_sets: "[{all,allactive,drv,cam,clm,cice,mpaso,mali,mpassi}]\\nQuery compsets corresponding to the target component for the e3sm model. If no component is given, lists compsets defined by all components"
    components: "[{all,None,cam,datm,satm,xatm,vic,clm,dlnd,slnd,xlnd,mpassi,cice,dice,sice,xice,mpaso,docn,socn,xocn,mosart,drof,srof,xrof,mali,malisia,dglc,sglc,xglc,ww,dwav,swav,xwav,sesp,desp}]\\nQuery component settings corresponding to the target component for e3sm model.\\nIf the option is empty, then the lists settings defined by all components is output"
    long: "Provide long output for queries"
  }
  output {
    File out_stdout = stdout()
  }
}