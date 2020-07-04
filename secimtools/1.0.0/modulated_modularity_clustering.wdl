version 1.0

task ModulatedModularityClustering.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? correlation
    String? sigma_low
    String? sigma_high
    String? sigma_num
    String? figure
    String? out
    String? palette
    String? color
  }
  command <<<
    modulated_modularity_clustering.py \
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
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Nam of the column with unique identifiers."
    correlation: "Compute correlation coefficients using either 'pearson' (standard correlation coefficient), 'kendall' (Kendall Tau correlation coefficient), or 'spearman' (Spearman rank correlation)."
    sigma_low: "Low value of sigma (Default: 0.05)."
    sigma_high: "High value of sigma (Default: 0.50)."
    sigma_num: "Number of values of sigma to search (Default: 451)."
    figure: "MMC Heatmaps"
    out: "Output TSV name"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
  }
}