version 1.0

task ContigReadCountPerGenome.py {
  input {
    Int maxMaxNProcessors
    String? contigContigFa
    String? reReFfa
    String? bamBamFiles
  }
  command <<<
    contig_read_count_per_genome.py \
      ~{contigContigFa} \
      ~{if defined(maxMaxNProcessors) then ("--max_n_processors " +  '"' + maxMaxNProcessors + '"') else ""} \
      ~{reReFfa} \
      ~{bamBamFiles}
  >>>
}