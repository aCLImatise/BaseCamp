version 1.0

task LavToAxt.py {
  input {
    Boolean? silent
  }
  command <<<
    lav_to_axt.py \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    silent: ""
  }
}