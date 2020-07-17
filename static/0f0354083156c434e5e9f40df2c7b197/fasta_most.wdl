version 1.0

task FastaMost {
  input {
    Boolean? min
    Boolean? max
  }
  command <<<
    fasta-most \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max}
  >>>
  parameter_meta {
    min: "<length>  minimum length to accept"
    max: "<length>  maximum length to accept"
  }
}