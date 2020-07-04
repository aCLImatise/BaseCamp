version 1.0

task Kinfold {
  input {
    Boolean? full_help
    Int? dangle
    Float? temp
    File? par
    Boolean? log_ml
    Boolean? no_shift
    Boolean? no_lp
    String? seed
    Float? time
    Int? num
    Boolean? start
    Boolean? stop
    Boolean? met
    Boolean? fpt
    Float? grow
    Int? glen
    File? log
    Boolean? silent
    Boolean? verbose
    Boolean? lm_in
    Float? cut
  }
  command <<<
    Kinfold \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(dangle) then ("--dangle " +  '"' + dangle + '"') else ""} \
      ~{if defined(temp) then ("--Temp " +  '"' + temp + '"') else ""} \
      ~{if defined(par) then ("--Par " +  '"' + par + '"') else ""} \
      ~{true="--logML" false="" log_ml} \
      ~{true="--noShift" false="" no_shift} \
      ~{true="--noLP" false="" no_lp} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{true="--start" false="" start} \
      ~{true="--stop" false="" stop} \
      ~{true="--met" false="" met} \
      ~{true="--fpt" false="" fpt} \
      ~{if defined(grow) then ("--grow " +  '"' + grow + '"') else ""} \
      ~{if defined(glen) then ("--glen " +  '"' + glen + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--lmin" false="" lm_in} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""}
  >>>
  parameter_meta {
    full_help: "Print help, including hidden options, and exit"
    dangle: "<0|1|2> set dangling end model to (none|normal|double) (possible values=\"0\", \"1\", \"2\" default=`2')"
    temp: "simulation temperature  (default=`37')"
    par: "read energy-parameter-file"
    log_ml: "use logarithmic multiloop energies instead of linear (default=on)"
    no_shift: "turn off shift-moves  (default=off)"
    no_lp: "forbid structures with isolated base-pairs (default=off)"
    seed: "set random number seed specify 3 integers as int=int=int  (default=`clock')"
    time: "set maxtime of simulation  (default=`500')"
    num: "set number of trajectories  (default=`1')"
    start: "read start structure from stdin (otherwise use open chain)  (default=off)"
    stop: "read stop structure(s) from stdin (optherwise use MFE) (default=off)"
    met: "use Metropolis rule for rates (not Kawasaki rule) (default=off)"
    fpt: "compute first passage time (stop when a stop-structure is reached)  (default=on)"
    grow: "grow chain every <float> time units  (default=`0')"
    glen: "initial size of growing chain  (default=`15')"
    log: "set basename of log-file  (default=`kinout')"
    silent: "no output to stdout  (default=off)"
    verbose: "more information to stdout  (default=off)"
    lm_in: "output only local minima to stdout  (default=off)"
    cut: "output structures with E <= <float> to stdout (default=`20')"
  }
}