version 1.0

task BaseCallingMatrixAnalyzer {
  input {
    String? matrix_file
    String? output_prefix
    String? min_quality_score
    String? max_quality_score
    Boolean? ignore_bases_quality
  }
  command <<<
    baseCalling_Matrix_analyzer \
      ~{if defined(matrix_file) then ("-i " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(min_quality_score) then ("-m " +  '"' + min_quality_score + '"') else ""} \
      ~{if defined(max_quality_score) then ("-x " +  '"' + max_quality_score + '"') else ""} \
      ~{true="-B" false="" ignore_bases_quality}
  >>>
  parameter_meta {
    matrix_file: "matrix file"
    output_prefix: "output prefix"
    min_quality_score: "min quality score[default:0]"
    max_quality_score: "max quality score[default:40]"
    ignore_bases_quality: "ignore the bases that quality is B or #"
  }
}