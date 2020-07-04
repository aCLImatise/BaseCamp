version 1.0

task RunMeraculous.sh {
  input {
    Boolean? label
    Boolean? dir
    Boolean? restart
    Boolean? resume
    Boolean? step
    Boolean? start
    Boolean? stop
    Boolean? archive
    Boolean? cleanup_level
    Boolean? version__program
  }
  command <<<
    run_meraculous.sh \
      ~{true="-label" false="" label} \
      ~{true="-dir" false="" dir} \
      ~{true="-restart" false="" restart} \
      ~{true="-resume" false="" resume} \
      ~{true="-step" false="" step} \
      ~{true="-start" false="" start} \
      ~{true="-stop" false="" stop} \
      ~{true="-archive" false="" archive} \
      ~{true="-cleanup_level" false="" cleanup_level} \
      ~{true="-v" false="" version__program}
  >>>
  parameter_meta {
    label: "<label>                : provide a label name for new runs ( Default: 'run' )"
    dir: "<directory>            : provide a run directory name  ( Default: latest run )"
    restart: ": restart a previously failed assembly"
    resume: ": restart but preserve any partial results    "
    step: ": execute one stage and stop"
    start: "<stage>                : re-run starting with this stage"
    stop: "<stage>                : stop after this stage"
    archive: ": save any old stage directories (valid only with -restart)"
    cleanup_level: "[0|1|2]          : decide how agressively the pipeline should clean up intermediate data ( Default: 1) 0 - do not delete any intermediate outputs (disk space footprint may be huge) 1 - delete files that are not used in any of the subsequent stages and that are generally not informative to the user 2 - delete files as soon as possible.  WARNING!!! You will not be able to rerun the stages individually once they have completed!"
    version__program: "|version                      : about this program"
  }
}