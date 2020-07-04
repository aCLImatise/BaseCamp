version 1.0

task HailctlDataprocDiagnose {
  input {
    String? dest
    String? hail_log
    Boolean? overwrite
    Boolean? no_diagnose
    Boolean? compress
    Boolean? workers
    String? take
    String name
  }
  command <<<
    hailctl dataproc diagnose \
      ~{name} \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{if defined(hail_log) then ("--hail-log " +  '"' + hail_log + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--no-diagnose" false="" no_diagnose} \
      ~{true="--compress" false="" compress} \
      ~{true="--workers" false="" workers} \
      ~{if defined(take) then ("--take " +  '"' + take + '"') else ""}
  >>>
  parameter_meta {
    dest: "Directory for diagnose output -- must be local."
    hail_log: "Path for hail.log file."
    overwrite: "Delete dest directory before adding new files."
    no_diagnose: "Do not run gcloud dataproc clusters diagnose."
    compress: "GZIP all files."
    workers: "[WORKERS [WORKERS ...]] Specific workers to get log files from."
    take: "Only download logs from the first N workers."
    name: "Cluster name."
  }
}