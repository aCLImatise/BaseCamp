version 1.0

task BaseCallingMatrixAnalyzer {
  input {
    File? matrix_file
    String? output_prefix
    Int? min_quality_score
    Int? max_quality_score
    Boolean? ignore_bases_is
    String error_matrix_analyzer_do_tpl
  }
  command <<<
    baseCalling_Matrix_analyzer \
      ~{error_matrix_analyzer_do_tpl} \
      ~{if defined(matrix_file) then ("-i " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(min_quality_score) then ("-m " +  '"' + min_quality_score + '"') else ""} \
      ~{if defined(max_quality_score) then ("-x " +  '"' + max_quality_score + '"') else ""} \
      ~{if (ignore_bases_is) then "-B" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix_file: "matrix file"
    output_prefix: "output prefix"
    min_quality_score: "min quality score[default:0]"
    max_quality_score: "max quality score[default:40]"
    ignore_bases_is: "ignore the bases that quality is B or #"
    error_matrix_analyzer_do_tpl: "Description"
  }
  output {
    File out_stdout = stdout()
  }
}