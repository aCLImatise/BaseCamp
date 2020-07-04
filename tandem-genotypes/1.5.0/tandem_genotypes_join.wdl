version 1.0

task TandemGenotypesJoin {
  input {
    Boolean? shrink
    String? mean
    File? scores
    Boolean? verbose
    String positive_file
  }
  command <<<
    tandem-genotypes-join \
      ~{positive_file} \
      ~{true="--shrink" false="" shrink} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    shrink: "shrink the output"
    mean: "type of mean for positive/patient/case files: 1=ordinary, 3=cubic (default=1)"
    scores: "importance scores for gene parts"
    verbose: "show more details"
    positive_file: ""
  }
}