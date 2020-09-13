version 1.0

task TadbitClean {
  input {
    File? change_workdir
    File? workdir
    Array[Int] job_ids
    Boolean? delete
    Boolean? compress
    Boolean? nox
    File? tmp_db
  }
  command <<<
    tadbit clean \
      ~{if defined(change_workdir) then ("--change_workdir " +  '"' + change_workdir + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(job_ids) then ("--jobids " +  '"' + job_ids + '"') else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (nox) then "--noX" else ""} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""}
  >>>
  parameter_meta {
    change_workdir: "In case folder was moved, input the new path"
    workdir: "path to working directory (generated with the tool tadbit mapper)"
    job_ids: "jobids of the files and entries to be removed"
    delete: "delete files, otherwise only DB entries."
    compress: "compress files and update paths accordingly"
    nox: "no display server (X screen)"
    tmp_db: "if provided uses this directory to manipulate the database"
  }
  output {
    File out_stdout = stdout()
  }
}