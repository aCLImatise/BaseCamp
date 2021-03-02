version 1.0

task RunMeraculoussh {
  input {
    Boolean? config_config_file
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
    run_meraculous_sh \
      ~{if (config_config_file) then "-c" else ""} \
      ~{if (label) then "-label" else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if (restart) then "-restart" else ""} \
      ~{if (resume) then "-resume" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (stop) then "-stop" else ""} \
      ~{if (archive) then "-archive" else ""} \
      ~{if (cleanup_level) then "-cleanup_level" else ""} \
      ~{if (version__program) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_config_file: "|config <config file>         : user config file"
    label: "<label>                : provide a label name for new runs ( Default: 'run' )"
    dir: "<directory>            : provide a run directory name  ( Default: latest run )"
    restart: ": restart a previously failed assembly"
    resume: ": restart but preserve any partial results"
    step: ": execute one stage and stop"
    start: "<stage>                : re-run starting with this stage"
    stop: "<stage>                : stop after this stage"
    archive: ": save any old stage directories (valid only with -restart)"
    cleanup_level: "[0|1|2]          : decide how agressively the pipeline should clean up intermediate data ( Default: 1)\\n0 - do not delete any intermediate outputs (disk space footprint may be huge)\\n1 - delete files that are not used in any of the subsequent stages and that are generally not informative to the user\\n2 - delete files as soon as possible.  WARNING!!! You will not be able to rerun the\\nstages individually once they have completed!"
    version__program: "|version                      : about this program"
  }
  output {
    File out_stdout = stdout()
  }
}