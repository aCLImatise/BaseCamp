version 1.0

task DgeniesGalleryDel {
  input {
    String idIdJob
    String nameName
    Boolean removeRemovePict
  }
  command <<<
    dgenies gallery del \
      ~{if defined(idIdJob) then ("--id-job " +  '"' + idIdJob + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--remove-pict" false="" removeRemovePict}
  >>>
}