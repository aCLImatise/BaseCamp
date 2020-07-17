version 1.0

task SecaprLocusSelection {
  input {
    String? folder_results_reference
    String? output_directory_safed
    String? n_loci_represented
    String? read_cov
    String? reference
  }
  command <<<
    secapr locus_selection \
      ~{if defined(folder_results_reference) then ("--input " +  '"' + folder_results_reference + '"') else ""} \
      ~{if defined(output_directory_safed) then ("--output " +  '"' + output_directory_safed + '"') else ""} \
      ~{if defined(n_loci_represented) then ("--n " +  '"' + n_loci_represented + '"') else ""} \
      ~{if defined(read_cov) then ("--read_cov " +  '"' + read_cov + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    folder_results_reference: "The folder with the results of the reference based assembly."
    output_directory_safed: "The output directory where results will be safed."
    n_loci_represented: "The n loci that are best represented accross all samples will be extracted."
    read_cov: "The threshold for what average read coverage the selected target loci should at least have."
    reference: "Path to reference library fasta file (secapr will find it by itself if the reference assembly was executed with secapr)."
  }
}