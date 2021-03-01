version 1.0

task NbmodelStan2py {
  input {
    File? design
    File? in_file
    Int? cond
    Int? iterations
    Int? warm_up
    File? outfile
    File? r_script
    File? stan_model
  }
  command <<<
    nbmodel_stan2_py \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(cond) then ("--cond " +  '"' + cond + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(warm_up) then ("--warmup " +  '"' + warm_up + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(r_script) then ("--rscript " +  '"' + r_script + '"') else ""} \
      ~{if defined(stan_model) then ("--stanmodel " +  '"' + stan_model + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    design: "TSV design file with sampleID names to analyze"
    in_file: "TSV input file with merged comparates and new headers"
    cond: "Number of conditions"
    iterations: "Optional number of iterations (default: 100000)"
    warm_up: "Optional number of warmups (default: 10000)"
    outfile: "Output file name/path. Default -\\nbayesian_output_$name.tabular"
    r_script: "Full path to R script if not using package version"
    stan_model: "Full path to stan model if not using package version\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}