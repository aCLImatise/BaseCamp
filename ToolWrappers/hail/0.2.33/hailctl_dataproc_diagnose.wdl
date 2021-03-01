version 1.0

task HailctlDataprocDiagnose {
  input {
    Directory? dest
    File? hail_log
    Boolean? overwrite
    Boolean? no_diagnose
    Boolean? compress
    Boolean? workers
    String? take
  }
  command <<<
    hailctl dataproc diagnose \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{if defined(hail_log) then ("--hail-log " +  '"' + hail_log + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (no_diagnose) then "--no-diagnose" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (workers) then "--workers" else ""} \
      ~{if defined(take) then ("--take " +  '"' + take + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dest: "Directory for diagnose output -- must be local."
    hail_log: "Path for hail.log file."
    overwrite: "Delete dest directory before adding new files."
    no_diagnose: "Do not run gcloud dataproc clusters diagnose."
    compress: "GZIP all files."
    workers: "[WORKERS [WORKERS ...]]\\nSpecific workers to get log files from."
    take: "Only download logs from the first N workers."
  }
  output {
    File out_stdout = stdout()
    Directory out_dest = "${in_dest}"
  }
}