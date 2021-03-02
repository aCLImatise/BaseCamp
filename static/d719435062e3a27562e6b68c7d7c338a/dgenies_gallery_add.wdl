version 1.0

task DgeniesGalleryAdd {
  input {
    String? id_job
    String? name
    String? query
    String? target
    File? pict
  }
  command <<<
    dgenies gallery add \
      ~{if defined(id_job) then ("--id-job " +  '"' + id_job + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(pict) then ("--pict " +  '"' + pict + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id_job: "Id (name) of the job to add to the gallery"
    name: "Name to show in the gallery for the job"
    query: "Name of the query"
    target: "Name of the target"
    pict: "Name of the file that illustrate the job"
  }
  output {
    File out_stdout = stdout()
  }
}