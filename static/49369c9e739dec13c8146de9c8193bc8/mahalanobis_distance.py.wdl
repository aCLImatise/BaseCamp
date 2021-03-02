version 1.0

task MahalanobisDistancepy {
  input {
    String? dataset_wide_format
    File? design
    String? id
    String? group
    String? order
    String? levels
    String? figure
    String? distance_to_mean
    String? distance_pairwise
    Float? per
    String? penalty
    File? log
    String? palette
    String? color
  }
  command <<<
    mahalanobis_distance_py \
      ~{if defined(dataset_wide_format) then ("--input " +  '"' + dataset_wide_format + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(distance_to_mean) then ("--distanceToMean " +  '"' + distance_to_mean + '"') else ""} \
      ~{if defined(distance_pairwise) then ("--distancePairwise " +  '"' + distance_pairwise + '"') else ""} \
      ~{if defined(per) then ("--per " +  '"' + per + '"') else ""} \
      ~{if defined(penalty) then ("--penalty " +  '"' + penalty + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dataset_wide_format: "Dataset in Wide format"
    design: "Design file"
    id: "Name of the column with uniqueID."
    group: "Treatment group"
    order: "Run Order"
    levels: "Additional notes."
    figure: "PDF Output of standardizedEuclidean distance plot"
    distance_to_mean: "TSV Output of Mahalanobis distances from samples to\\nthe mean."
    distance_pairwise: "TSV Output of sample-pairwisemahalanobis distances."
    per: "The thresholdfor standard distributions. The default\\nis 0.95."
    penalty: "Value of lambda for the penalty."
    log: "Log file"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}