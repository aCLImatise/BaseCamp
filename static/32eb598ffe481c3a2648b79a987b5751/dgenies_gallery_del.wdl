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
      ~{true="--remove-pict" false="" remove_pict}
  >>>
  parameter_meta {
    id_job: "Id (name) of the job to delete from the gallery"
    name: "Name of the job shown in the gallery"
    remove_pict: "Remove picture file"
  }
}