version 1.0

task DgeniesGalleryDel {
  input {
    String? id_job
    String? name
    Boolean? remove_pict
  }
  command <<<
    dgenies gallery del \
      ~{if defined(id_job) then ("--id-job " +  '"' + id_job + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (remove_pict) then "--remove-pict" else ""}
  >>>
  parameter_meta {
    id_job: "Id (name) of the job to delete from the gallery"
    name: "Name of the job shown in the gallery"
    remove_pict: "Remove picture file"
  }
  output {
    File out_stdout = stdout()
  }
}