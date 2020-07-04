version 1.0

task Ibdne {
  input {
    String cat
    String? ibd
  }
  command <<<
    ibdne \
      ~{cat} \
      ~{ibd}
  >>>
  parameter_meta {
    cat: ""
    ibd: ""
  }
}