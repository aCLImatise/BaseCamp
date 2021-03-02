version 1.0

task ModulatedModularityClusteringpy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    String? correlation
    Float? sigma_low
    Float? sigma_high
    Int? sigma_num
    String? figure
    String? out
    String? palette
    String? color
  }
  command <<<
    modulated_modularity_clustering_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(correlation) then ("--correlation " +  '"' + correlation + '"') else ""} \
      ~{if defined(sigma_low) then ("--sigmaLow " +  '"' + sigma_low + '"') else ""} \
      ~{if defined(sigma_high) then ("--sigmaHigh " +  '"' + sigma_high + '"') else ""} \
      ~{if defined(sigma_num) then ("--sigmaNum " +  '"' + sigma_num + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Nam of the column with unique identifiers."
    correlation: "Compute correlation coefficients using either\\n'pearson' (standard correlation coefficient),\\n'kendall' (Kendall Tau correlation coefficient), or\\n'spearman' (Spearman rank correlation)."
    sigma_low: "Low value of sigma (Default: 0.05)."
    sigma_high: "High value of sigma (Default: 0.50)."
    sigma_num: "Number of values of sigma to search (Default: 451)."
    figure: "MMC Heatmaps"
    out: "Output TSV name"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}