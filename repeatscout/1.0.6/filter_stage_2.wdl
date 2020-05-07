version 1.0

task FilterStage2.prl {
  input {
    Boolean catCat
    Boolean threshThresh
  }
  command <<<
    filter-stage-2.prl \
      ~{true="--cat" false="" catCat} \
      ~{true="--thresh" false="" threshThresh}
  >>>
}