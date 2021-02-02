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
  parameter_meta {
    genome: "a genome file of chromosome sizes and order"
    path: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}