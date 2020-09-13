version 1.0

task PyLOHpyRunModel {
  input {
    Int? allele_number_max
    File? priors
    Int? max_iters
    Float? stop_value
  }
  command <<<
    PyLOH_py run_model \
      ~{if defined(allele_number_max) then ("--allelenumber_max " +  '"' + allele_number_max + '"') else ""} \
      ~{if defined(priors) then ("--priors " +  '"' + priors + '"') else ""} \
      ~{if defined(max_iters) then ("--max_iters " +  '"' + max_iters + '"') else ""} \
      ~{if defined(stop_value) then ("--stop_value " +  '"' + stop_value + '"') else ""}
  >>>
  parameter_meta {
    allele_number_max: "Maximum copy number of each allele allows to take.\\nDefault is 2."
    priors: "File of the prior distribution. If not provided, use\\nuniform prior. Default is None."
    max_iters: "Maximum number of iterations for training. Default is\\n100."
    stop_value: "Stop value of the EM algorithm for training. If the\\nchange of log-likelihood is lower than this value,\\nstop training. Default is 1e-7.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}