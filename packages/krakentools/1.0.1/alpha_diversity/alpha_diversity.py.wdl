version 1.0

task AlphaDiversitypy {
  input {
    File? filename
    String? alpha
  }
  command <<<
    alpha_diversity_py \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    filename: "bracken file with species abundance estimates"
    alpha: "type of alpha diversity to calculate S, BP or F,\\ndefault = S\\n"
  }
  output {
    File out_stdout = stdout()
  }
}