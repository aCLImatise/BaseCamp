version 1.0

task UniqLinepl {
  input {
    Int? give_column_number
    String input_dot_bed
    String output_dot_bed
  }
  command <<<
    uniqLine_pl \
      ~{input_dot_bed} \
      ~{output_dot_bed} \
      ~{if defined(give_column_number) then ("--c " +  '"' + give_column_number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    give_column_number: ": give the column number that are used to check duplication. could be multiple. (e.g. Default: --c 1 --c 2 --c 3 for bed files and --c 1 --c 4 --c 5 for gtf files)"
    input_dot_bed: ""
    output_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}