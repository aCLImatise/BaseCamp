version 1.0

task _sigcleave {
  input {
    Boolean? min_weight
  }
  command <<<
    _sigcleave \
      ~{true="-minweight" false="" min_weight}
  >>>
  parameter_meta {
    min_weight: "float      [3.5] Minimum scoring weight value for the predicted cleavage site (Number from 0.000 to 100.000)"
  }
}