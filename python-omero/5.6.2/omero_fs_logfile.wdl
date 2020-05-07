version 1.0

task OmeroFsLogfile {
  input {
    Boolean nameName
    Boolean sizeSize
    File? filenameFilename
  }
  command <<<
    omero fs logfile \
      ~{filenameFilename} \
      ~{true="--name" false="" nameName} \
      ~{true="--size" false="" sizeSize}
  >>>
}