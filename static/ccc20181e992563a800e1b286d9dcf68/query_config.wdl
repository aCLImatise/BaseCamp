version 1.0

task QueryConfig {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    Boolean? comp_sets
    Boolean? components
    Boolean? grids
    Boolean? machines
    Boolean? long
  }
  command <<<
    query_config \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--silent" false="" silent} \
      ~{true="--compsets" false="" comp_sets} \
      ~{true="--components" false="" components} \
      ~{true="--grids" false="" grids} \
      ~{true="--machines" false="" machines} \
      ~{true="--long" false="" long}
  >>>
  parameter_meta {
    debug: "Print debug information (very verbose) to file /tmp/tmpeksbd5_3/query_config.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    comp_sets: "[{all,allactive,drv,cam,clm,cice,mpaso,mali,mpassi}] Query compsets corresponding to the target component for the e3sm model. If no component is given, lists compsets defined by all components"
    components: "[{all,None,cam,datm,satm,xatm,vic,clm,dlnd,slnd,xlnd,mpassi,cice,dice,sice,xice,mpaso,docn,socn,xocn,mosart,drof,srof,xrof,mali,malisia,dglc,sglc,xglc,ww,dwav,swav,xwav,sesp,desp}] Query component settings corresponding to the target component for e3sm model. If the option is empty, then the lists settings defined by all components is output"
    grids: "Query supported model grids for e3sm model."
    machines: "[{all,current,edison,cori-haswell,cori-knl,stampede2,mac,linux-generic,melvin,anlworkstation,sandiatoss3,ghost,blues,anvil,bebop,cetus,cab,syrah,quartz,mira,theta,sooty,cascade,constance,oic2,oic5,cades,titan,eos,grizzly,wolf,mesabi,itasca,lawrencium-lr3,lawrencium-lr2,eddi,summitdev,summit}] Query supported machines for e3sm model. If option is left empty then all machines are listed, If the option is 'current' then only the current machine details are listed."
    long: "Provide long output for queries"
  }
}