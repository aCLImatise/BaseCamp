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
    Int? seed
    Float? time
    Int? num
    Boolean? start
    Boolean? stop
    Boolean? met
    Boolean? fpt
    Boolean? rect
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
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(dangle) then ("--dangle " +  '"' + dangle + '"') else ""} \
      ~{if defined(temp) then ("--Temp " +  '"' + temp + '"') else ""} \
      ~{if defined(par) then ("--Par " +  '"' + par + '"') else ""} \
      ~{if (log_ml) then "--logML" else ""} \
      ~{if (no_shift) then "--noShift" else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (stop) then "--stop" else ""} \
      ~{if (met) then "--met" else ""} \
      ~{if (fpt) then "--fpt" else ""} \
      ~{if (rect) then "--rect" else ""} \
      ~{if defined(grow) then ("--grow " +  '"' + grow + '"') else ""} \
      ~{if defined(glen) then ("--glen " +  '"' + glen + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (lm_in) then "--lmin" else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    full_help: "Print help, including hidden options, and exit"
    dangle: "<0|1|2> set dangling end model to (none|normal|double)\\n(possible values=\\\"0\\\", \\\"1\\\", \\\"2\\\" default=`2')"
    temp: "simulation temperature  (default=`37')"
    par: "read energy-parameter-file"
    log_ml: "use logarithmic multiloop energies instead of linear\\n(default=on)"
    no_shift: "turn off shift-moves  (default=off)"
    no_lp: "forbid structures with isolated base-pairs\\n(default=off)"
    seed: "set random number seed specify 3 integers as\\nint=int=int  (default=`clock')"
    time: "set maxtime of simulation  (default=`500')"
    num: "set number of trajectories  (default=`1')"
    start: "read start structure from stdin (otherwise use open\\nchain)  (default=off)"
    stop: "read stop structure(s) from stdin (otherwise use MFE)\\n(default=off)"
    met: "use Metropolis rule for rates (not Kawasaki rule)\\n(default=off)"
    fpt: "compute first passage time (stop when a stop-structure\\nis reached)  (default=on)"
    rect: "compute recurrence time (of a start structure which is\\ncontained in stop structures)  (default=off)"
    grow: "grow chain every <float> time units  (default=`0')"
    glen: "initial size of growing chain  (default=`15')"
    log: "set basename of log-file  (default=`kinout')"
    silent: "no output to stdout  (default=off)"
    verbose: "more information to stdout  (default=off)"
    lm_in: "output only local minima to stdout  (default=off)"
    cut: "only print structures with E <= MFE + <float> to stdout\\n(default=`20')"
  }
  output {
    File out_stdout = stdout()
  }
}