version 1.0

task PhylocsfAnnotatewithmmseqs {
  input {
    Int? threads
    File? path_where_written
    String? strategy
    File? mm_seqs_bin
    Int? genome_length
    File? coding_exons
    File? mapping
    Int? model_info
    String phylo_csf
  }
  command <<<
    phylocsf__ annotate_with_mmseqs \
      ~{phylo_csf} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(path_where_written) then ("--output " +  '"' + path_where_written + '"') else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if defined(mm_seqs_bin) then ("--mmseqs-bin " +  '"' + mm_seqs_bin + '"') else ""} \
      ~{if defined(genome_length) then ("--genome-length " +  '"' + genome_length + '"') else ""} \
      ~{if defined(coding_exons) then ("--coding-exons " +  '"' + coding_exons + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(model_info) then ("--model-info " +  '"' + model_info + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0"
  }
  parameter_meta {
    threads: "Parallelize scoring of multiple MSAs in a file. Default: 2"
    path_where_written: "Path where output GFF/GTF will be written to. If it does not\\nexist, it will be created. Default: output files are stored\\nnext to the input files."
    strategy: "PhyloCSF scoring algorithm: MLE, FIXED, OMEGA or FIXED_MEAN.\\nDefault: MLE"
    mm_seqs_bin: "Path to MMseqs2 binary. Default: mmseqs"
    genome_length: "Total genome length (needed for --strategy FIXED_MEAN)."
    coding_exons: "BED-like file (chrom name, strand, phase, start, end) with\\ncoordinates of coding exons (needed for --strategy\\nFIXED_MEAN)."
    mapping: "If the MSAs don't use common species names (like Human,\\nChimp, etc.) you can pass a two-column tsv file with a name\\nmapping."
    model_info: "Output the organisms included in a specific model. Included\\nmodels are: 21mosquitoes, 58mammals, 7yeast, 29mammals,\\n53birds, 49birds, 100vertebrates, 23flies, 12flies, 26worms,\\n20flies.\\n"
    phylo_csf: ""
  }
  output {
    File out_stdout = stdout()
  }
}