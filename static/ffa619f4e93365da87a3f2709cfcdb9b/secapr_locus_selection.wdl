version 1.0

task SecaprLocusSelection {
  input {
    Directory? folder_results_based
    String? n_loci_represented
    String? read_cov
    File? reference
    String? var_output
    String assembly_dot
  }
  command <<<
    secapr locus_selection \
      ~{assembly_dot} \
      ~{if defined(folder_results_based) then ("--input " +  '"' + folder_results_based + '"') else ""} \
      ~{if defined(n_loci_represented) then ("--n " +  '"' + n_loci_represented + '"') else ""} \
      ~{if defined(read_cov) then ("--read_cov " +  '"' + read_cov + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    folder_results_based: "The folder with the results of the reference based"
    n_loci_represented: "The n loci that are best represented accross all\\nsamples will be extracted."
    read_cov: "The threshold for what average read coverage the\\nselected target loci should at least have."
    reference: "Path to reference library fasta file (secapr will find\\nit by itself if the reference assembly was executed\\nwith secapr).\\n"
    var_output: ""
    assembly_dot: "--output OUTPUT       The output directory where results will be safed."
  }
  output {
    File out_stdout = stdout()
  }
}