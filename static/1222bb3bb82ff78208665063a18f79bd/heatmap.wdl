version 1.0

task Heatmap.py {
  input {
    String secondarySecondaryModelTar
    String rowRowMethod
    String columnColumnMethod
    String rowRowMetric
    String columnColumnMetric
    String sampleSampleF
    String? dataDataF
    String? outOutF
    String? modelModelTar
    String? colorColorF
  }
  command <<<
    heatmap.py \
      ~{dataDataF} \
      ~{if defined(secondarySecondaryModelTar) then ("--secondary_model_tar " +  '"' + secondarySecondaryModelTar + '"') else ""} \
      ~{if defined(rowRowMethod) then ("--row_method " +  '"' + rowRowMethod + '"') else ""} \
      ~{if defined(columnColumnMethod) then ("--column_method " +  '"' + columnColumnMethod + '"') else ""} \
      ~{if defined(rowRowMetric) then ("--row_metric " +  '"' + rowRowMetric + '"') else ""} \
      ~{if defined(columnColumnMetric) then ("--column_metric " +  '"' + columnColumnMetric + '"') else ""} \
      ~{if defined(sampleSampleF) then ("--sample_f " +  '"' + sampleSampleF + '"') else ""} \
      ~{outOutF} \
      ~{modelModelTar} \
      ~{colorColorF}
  >>>
}