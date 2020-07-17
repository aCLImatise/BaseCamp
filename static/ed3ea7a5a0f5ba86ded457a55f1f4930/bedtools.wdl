version 1.0

task Bedtools {
  input {
    Boolean? contact
  }
  command <<<
    bedtools \
      ~{true="--contact" false="" contact}
  >>>
  parameter_meta {
    contact: "Feature requests, bugs, mailing lists, etc."
  }
}