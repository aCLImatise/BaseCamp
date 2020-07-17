version 1.0

task _cpgreport {
  input {
    Boolean? score
  }
  command <<<
    _cpgreport \
      ~{true="-score" false="" score}
  >>>
  parameter_meta {
    score: "integer    [17] This sets the score for each CG sequence found. A value of 17 is more sensitive, but 28 has also been used with some success. (Integer from 1 to 200)"
  }
}