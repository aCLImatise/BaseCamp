version 1.0

task OmeroConfigLoad {
  input {
    Boolean qQ
    File? fileFile
  }
  command <<<
    omero config load \
      ~{fileFile} \
      ~{true="-q" false="" qQ}
  >>>
}