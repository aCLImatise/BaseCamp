version 1.0

task PhylocsfScoremsa {
  input {
    String? strategy
    Boolean? comp_anc
    Int? threads
    File? path_where_written
    File? mapping
    String? species
    Int? genome_length
    File? coding_exons
    Int? model_info
    String mle
  }
  command <<<
    phylocsf__ score_msa \
      ~{mle} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if defined(comp_anc) then ("--comp-anc " +  '"' + comp_anc + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(path_where_written) then ("--output " +  '"' + path_where_written + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genome_length) then ("--genome-length " +  '"' + genome_length + '"') else ""} \
      ~{if defined(coding_exons) then ("--coding-exons " +  '"' + coding_exons + '"') else ""} \
      ~{if defined(model_info) then ("--model-info " +  '"' + model_info + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0"
  }
  parameter_meta {
    strategy: "PhyloCSF scoring algorithm: MLE, FIXED or OMEGA. Default:"
    comp_anc: "Compute the ancestral sequence composition score (only in\\nMLE and FIXED mode). Default: 0"
    threads: "Parallelize scoring of multiple MSAs in a file. Default: 2"
    path_where_written: "Path where tracks in wig format will be written. If it does\\nnot exist, it will be created. Default: output files are\\nstored next to the input files."
    mapping: "If the MSAs don't use common species names (like Human,\\nChimp, etc.) you can pass a two-column tsv file with a name\\nmapping."
    species: "Comma separated list of species to reduce <model> to a\\nsubset of species to improve running time, e.g.,\\n\\\"Human,Chimp,Seaturtle\\\""
    genome_length: "Total genome length (needed for --output-phylo)."
    coding_exons: "BED-like file (chrom name, strand, phase, start, end) with\\ncoordinates of coding exons (needed for --output-phylo)."
    model_info: "Output the organisms included in a specific model. Included\\nmodels are: 21mosquitoes, 58mammals, 7yeast, 29mammals,\\n53birds, 49birds, 100vertebrates, 23flies, 12flies, 26worms,\\n20flies.\\n"
    mle: "--comp-phylo BOOL      Compute the PhyloCSF score for each alignment. Default: 1"
  }
  output {
    File out_stdout = stdout()
    File out_coding_exons = "${in_coding_exons}"
  }
}