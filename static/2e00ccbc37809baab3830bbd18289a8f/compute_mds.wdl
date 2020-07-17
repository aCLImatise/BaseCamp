version 1.0

task ComputeMds {
  input {
    Int? start
    Int? end
    String? fasta_file_containing
    Float? th_rd
    Float? sim
    File? plot_out_name
    File? out_name
    File? file_name_prefix
  }
  command <<<
    compute_mds \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(fasta_file_containing) then ("-r " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(th_rd) then ("--thrd " +  '"' + th_rd + '"') else ""} \
      ~{if defined(sim) then ("--sim " +  '"' + sim + '"') else ""} \
      ~{if defined(plot_out_name) then ("--plot_outname " +  '"' + plot_out_name + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(file_name_prefix) then ("-q " +  '"' + file_name_prefix + '"') else ""}
  >>>
  parameter_meta {
    start: "Starting position of the region of interest, 0-based indexing (default: 2252)"
    end: "Ending position of the region of interest, 0-based indexing. Note a half-open interval is used, i.e, [start:end) (default: 2549)"
    fasta_file_containing: "FASTA file containing msa for true haplotypes (default: None)"
    th_rd: "Threshold on the haplotype frequency (default: 0.02)"
    sim: "Threshold on the similarity between true haplotypes and reconstructed haplotypes (default: 0.9)"
    plot_out_name: "File name for the output plot (default: mds_plot.pdf)"
    out_name: "File name for the output file containing mapping from reconstructed haplotypes to true haplotypes (default: mapping.tsv)"
    file_name_prefix: "File name prefix for reconstructed haplotypes (default: None)"
  }
}