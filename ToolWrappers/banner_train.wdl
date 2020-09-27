version 1.0

task BannerTrain {
  input {
    String? matrix
    String? outfile
    Int? processors
    Int? estimators
    String banner
  }
  command <<<
    banner train \
      ~{banner} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if defined(estimators) then ("--estimators " +  '"' + estimators + '"') else ""}
  >>>
  parameter_meta {
    matrix: "The matrix from hulk smash"
    outfile: "Where to write the model to"
    processors: "Number of processors to use for training"
    estimators: "Number of estimators to use for training\\n"
    banner: ""
  }
  output {
    File out_stdout = stdout()
  }
}