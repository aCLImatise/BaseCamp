version 1.0

task Tandemgenotypesjoin {
  input {
    Boolean? shrink
    Int? mean
    File? scores
    Boolean? verbose
    File positive_file
  }
  command <<<
    tandem_genotypes_join \
      ~{positive_file} \
      ~{if (shrink) then "--shrink" else ""} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    shrink: "shrink the output"
    mean: "type of mean for positive/patient/case files:\\n1=ordinary, 3=cubic (default=1)"
    scores: "importance scores for gene parts"
    verbose: "show more details"
    positive_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}