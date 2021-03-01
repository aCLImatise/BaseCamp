version 1.0

task Checksortorder {
  input {
    File? genome
    File path
  }
  command <<<
    check_sort_order \
      ~{path} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/check-sort-order:0.0.7--0"
  }
  parameter_meta {
    genome: "a genome file of chromosome sizes and order"
    path: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}