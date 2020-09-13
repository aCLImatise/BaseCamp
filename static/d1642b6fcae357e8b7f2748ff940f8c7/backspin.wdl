version 1.0

task Backspin {
  input {
    Boolean? i
    Boolean? path_delimited_filerows
    Boolean? o
    File? name_file_output
    Boolean? depthnumber_levels_number
    Boolean? number_iterations_used_preparatory
    Boolean? feature_selection_performed
    Boolean? width_parameter_used
    Boolean? number_iterations_used_width
    Boolean? controls_width_parametersmaller
    Boolean? minimal_number_genes_group_must_contain
    Boolean? minimal_number_cells_group_must_contain
    Boolean? minimum_score_breaking
    Boolean? difference_average_expression
    Boolean? run_normal_spin
    Boolean? verbose_print_stdoutput
  }
  command <<<
    backspin \
      ~{if (i) then "-i" else ""} \
      ~{if (path_delimited_filerows) then "--input" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (name_file_output) then "--output" else ""} \
      ~{if (depthnumber_levels_number) then "-d" else ""} \
      ~{if (number_iterations_used_preparatory) then "-t" else ""} \
      ~{if (feature_selection_performed) then "-f" else ""} \
      ~{if (width_parameter_used) then "-s" else ""} \
      ~{if (number_iterations_used_width) then "-T" else ""} \
      ~{if (controls_width_parametersmaller) then "-S" else ""} \
      ~{if (minimal_number_genes_group_must_contain) then "-g" else ""} \
      ~{if (minimal_number_cells_group_must_contain) then "-c" else ""} \
      ~{if (minimum_score_breaking) then "-k" else ""} \
      ~{if (difference_average_expression) then "-r" else ""} \
      ~{if (run_normal_spin) then "-b" else ""} \
      ~{if (verbose_print_stdoutput) then "-v" else ""}
  >>>
  parameter_meta {
    i: "[inputfile]"
    path_delimited_filerows: "=[inputfile]\\nPath of the cef formatted tab delimited file.\\nRows should be genes and columns single cells/samples.\\nFor further information on the cef format visit:\\nhttps://github.com/linnarsson-lab/ceftools"
    o: "[outputfile]"
    name_file_output: "=[outputfile]\\nThe name of the file to which the output will be written"
    depthnumber_levels_number: "[int]\\nDepth/Number of levels: The number of nested splits that will be tried by the algorithm"
    number_iterations_used_preparatory: "[int]\\nNumber of the iterations used in the preparatory SPIN.\\nDefaults to 10"
    feature_selection_performed: "[int]\\nFeature selection is performed before BackSPIN. Argument controls how many genes are seleceted.\\nSelection is based on expected noise (a curve fit to the CV-vs-mean plot)."
    width_parameter_used: "[float]\\nControls the decrease rate of the width parameter used in the preparatory SPIN.\\nSmaller values will increase the number of SPIN iterations and result in higher\\nprecision in the first step but longer execution time.\\nDefaults to 0.1"
    number_iterations_used_width: "[int]\\nNumber of the iterations used for every width parameter.\\nDoes not apply on the first run (use -t instead)\\nDefaults to 8"
    controls_width_parametersmaller: "[float]\\nControls the decrease rate of the width parameter.\\nSmaller values will increase the number of SPIN iterations and result in higher\\nprecision but longer execution time.\\nDoes not apply on the first run (use -s instead)\\nDefaults to 0.3"
    minimal_number_genes_group_must_contain: "[int]\\nMinimal number of genes that a group must contain for splitting to be allowed.\\nDefaults to 2"
    minimal_number_cells_group_must_contain: "[int]\\nMinimal number of cells that a group must contain for splitting to be allowed.\\nDefaults to 2"
    minimum_score_breaking: "[float]\\nMinimum score that a breaking point has to reach to be suitable for splitting.\\nDefaults to 1.15"
    difference_average_expression: "[float]\\nIf the difference between the average expression of two groups is lower than threshold the algorythm\\nuses higly correlated genes to assign the gene to one of the two groups\\nDefaults to 0.2"
    run_normal_spin: "[axisvalue]\\nRun normal SPIN instead of backSPIN.\\nNormal spin accepts the parameters -T -S\\nAn axis value 0 to only sort genes (rows), 1 to only sort cells (columns) or 'both' for both\\nmust be passed"
    verbose_print_stdoutput: "Verbose. Print  to the stdoutput extra details of what is happening\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_file_output = "${in_name_file_output}"
  }
}