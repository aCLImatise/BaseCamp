version 1.0

task SingularityMount {
  input {
    Boolean? writable
    Boolean? overlay
    String singularity
  }
  command <<<
    singularity mount \
      ~{singularity} \
      ~{true="--writable" false="" writable} \
      ~{true="--overlay" false="" overlay}
  >>>
  parameter_meta {
    writable: "By default all Singularity containers are available as read only. This option makes the file system accessible as read/write."
    overlay: "Use a persistent overlayFS via a writable image"
    singularity: ""
  }
}