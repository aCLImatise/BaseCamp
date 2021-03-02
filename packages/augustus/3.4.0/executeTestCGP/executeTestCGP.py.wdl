version 1.0

task ExecuteTestCGPpy {
  input {
    Boolean? predict
    Boolean? prepare
    Boolean? port
    Boolean? run
    Boolean? eval
    Array[String] chunks
    Boolean? test
    Int? rand
    File? augustus_dir
    File? eval_dir
    File? working_dir
  }
  command <<<
    executeTestCGP_py \
      ~{if (predict) then "--predict" else ""} \
      ~{if (prepare) then "--prepare" else ""} \
      ~{if (port) then "--port" else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if (eval) then "--eval" else ""} \
      ~{if defined(chunks) then ("--chunks " +  '"' + chunks + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(rand) then ("--rand " +  '"' + rand + '"') else ""} \
      ~{if defined(augustus_dir) then ("--augustusDir " +  '"' + augustus_dir + '"') else ""} \
      ~{if defined(eval_dir) then ("--evalDir " +  '"' + eval_dir + '"') else ""} \
      ~{if defined(working_dir) then ("--workingDir " +  '"' + working_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    predict: "to run original prediction."
    prepare: "to build a new test set from scratch."
    port: "to build a new test set from scratch."
    run: "to run prediction using minimal data set."
    eval: "to evaluate accuracy (respect to the last prediction\\nobtained by launching the script with --run option)."
    chunks: "a list of one or more positive integers indicating the\\nchunk/s to be processed (refer to documentation for a\\nlist of chunks over hg38.chr1)."
    test: "to run a basic test to assess the correctness in the\\ncreation of the minimal data set."
    rand: "to pick a random subset of non overlapping chunks\\ncontaining at least 300 genes."
    augustus_dir: "path to comparative Augustus executable."
    eval_dir: "path to Eval script."
    working_dir: "path to data set used in testing (link).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}