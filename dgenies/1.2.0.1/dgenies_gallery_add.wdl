version 1.0

task DgeniesGalleryAdd {
  input {
    String idIdJob
    String nameName
    String queryQuery
    String targetTarget
    String pictPict
  }
  command <<<
    dgenies gallery add \
      ~{if defined(idIdJob) then ("--id-job " +  '"' + idIdJob + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(pictPict) then ("--pict " +  '"' + pictPict + '"') else ""}
  >>>
}