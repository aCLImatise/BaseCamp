version 1.0

task Heatmappy {
  input {
    String? secondary_model_tar
    String? row_method
    String? column_method
    String? row_metric
    String? column_metric
    String? sample_f
    String data_f
    String out_f
    String model_tar
    String color_f
  }
  command <<<
    heatmap_py \
      ~{data_f} \
      ~{out_f} \
      ~{model_tar} \
      ~{color_f} \
      ~{if defined(secondary_model_tar) then ("--secondary_model_tar " +  '"' + secondary_model_tar + '"') else ""} \
      ~{if defined(row_method) then ("--row_method " +  '"' + row_method + '"') else ""} \
      ~{if defined(column_method) then ("--column_method " +  '"' + column_method + '"') else ""} \
      ~{if defined(row_metric) then ("--row_metric " +  '"' + row_metric + '"') else ""} \
      ~{if defined(column_metric) then ("--column_metric " +  '"' + column_metric + '"') else ""} \
      ~{if defined(sample_f) then ("--sample_f " +  '"' + sample_f + '"') else ""}
  >>>
  parameter_meta {
    secondary_model_tar: "secondary model tar if combining the prediction of two\\ndifferent phenotype collections into one heatmap"
    row_method: "method to use for the row dendrogram"
    column_method: "method to use for the column dendrogram"
    row_metric: "metric to use for the row dendrogram"
    column_metric: "metric to use for the column dendrogram"
    sample_f: "restrict phenotype predictions to the sample found in\\n<sample_file>\\n"
    data_f: "tab delimited file with row and column names"
    out_f: "output image (png) file name"
    model_tar: "phenotype model archive"
    color_f: "file with r g b colors to be used"
  }
  output {
    File out_stdout = stdout()
  }
}