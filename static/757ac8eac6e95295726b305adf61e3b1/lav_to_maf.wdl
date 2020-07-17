version 1.0

task LavToMaf.py {
  input {
    Boolean? silent
  }
  command <<<
    lav_to_maf.py \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    silent: ""
  }
}