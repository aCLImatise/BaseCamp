version 1.0

task Crossblock.sh {
  input {
    String decontaminate_dots_h
    String reads
  }
  command <<<
    crossblock.sh \
      ~{decontaminate_dots_h} \
      ~{reads}
  >>>
  parameter_meta {
    decontaminate_dots_h: ""
    reads: ""
  }
}