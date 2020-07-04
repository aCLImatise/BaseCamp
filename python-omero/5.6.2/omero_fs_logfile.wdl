version 1.0

task OmeroFsLogfile {
  input {
    Boolean? name
    Boolean? size
    File filename
  }
  command <<<
    omero fs logfile \
      ~{filename} \
      ~{true="--name" false="" name} \
      ~{true="--size" false="" size}
  >>>
  parameter_meta {
    name: "return the path of the logfile within the ManagedRepository"
    size: "return the size of the logfile in bytes"
    filename: "Local filename to be saved to. '-' for stdout"
  }
}