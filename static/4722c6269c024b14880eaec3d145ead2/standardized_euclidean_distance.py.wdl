version 1.0

task StandardizedEuclideanDistancepy {
  input {
    String? dataset_wide_format
    File? design
    String? id
    String? group
    String? order
    String? levels
    String? figure
    String? sed_to_mean
    String? sed_pairwise
    Float? per
    String? palette
    String? color
  }
  command <<<
    standardized_euclidean_distance_py \
      ~{if defined(dataset_wide_format) then ("--input " +  '"' + dataset_wide_format + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(sed_to_mean) then ("--SEDtoMean " +  '"' + sed_to_mean + '"') else ""} \
      ~{if defined(sed_pairwise) then ("--SEDpairwise " +  '"' + sed_pairwise + '"') else ""} \
      ~{if defined(per) then ("--per " +  '"' + per + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dataset_wide_format: "Dataset in Wide format"
    design: "Design file"
    id: "Name of the column with unique identifiers."
    group: "Treatment group"
    order: "Run Order"
    levels: "Different groups to sort by separeted by comas."
    figure: "PDF Output of standardized Euclidean distance plot"
    sed_to_mean: "TSV Output of standardized Euclidean distances from\\nsamples to the mean."
    sed_pairwise: "TSV Output of sample-pairwise standardized Euclidean\\ndistances."
    per: "The threshold for standard distributions. The default\\nis 0.95."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}