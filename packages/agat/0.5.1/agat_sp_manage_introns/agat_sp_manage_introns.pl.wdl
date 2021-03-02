version 1.0

task AgatSpManageIntronspl {
  input {
    File? ref_file
    Int? window
    Int? modify_x_values
    Boolean? plot
    String agat_sp_manage_introns_do_tpl
    String distribution_dot
  }
  command <<<
    agat_sp_manage_introns_pl \
      ~{agat_sp_manage_introns_do_tpl} \
      ~{distribution_dot} \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(modify_x_values) then ("--p " +  '"' + modify_x_values + '"') else ""} \
      ~{if (plot) then "--plot" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    ref_file: "Input GTF/GFF file. You can use several input files by doing: -f\\nfile1 -f file2 -f file3"
    window: "It the number of break used within the histogram plot. By\\ndefault it's 1000. You can modify the value to get something\\nmore or less precise."
    modify_x_values: "to modify the X values to calculate the percentage of the\\nlongest introns to remove. By default the value is 1 (We remove\\n1 percent of the longest)."
    plot: "Allows to create an histogram in pdf of intron sizes"
    agat_sp_manage_introns_do_tpl: "Description:"
    distribution_dot: "--out, --output or -o"
  }
  output {
    File out_stdout = stdout()
  }
}