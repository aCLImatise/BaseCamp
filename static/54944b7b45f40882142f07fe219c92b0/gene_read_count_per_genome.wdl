version 1.0

task GeneReadCountPerGenome.py {
  input {
    Int maxMaxNProcessors
    String? geneGeneFile
    String? reReFfa
    String? bamBamFiles
  }
  command <<<
    gene_read_count_per_genome.py \
      ~{geneGeneFile} \
      ~{if defined(maxMaxNProcessors) then ("--max_n_processors " +  '"' + maxMaxNProcessors + '"') else ""} \
      ~{reReFfa} \
      ~{bamBamFiles}
  >>>
}