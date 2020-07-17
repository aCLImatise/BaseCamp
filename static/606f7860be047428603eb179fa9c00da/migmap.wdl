version 1.0

task Migmap {
  input {
    Int? number_reads_take
    Int? number_cores_use
    String? threshold_average_nregions
    Boolean? chain_receptor_gene
    String? species_allowed_values
    Boolean? unmapped
    Boolean? use_kabat
    String input_dot
  }
  command <<<
    migmap \
      ~{input_dot} \
      ~{if defined(number_reads_take) then ("-n " +  '"' + number_reads_take + '"') else ""} \
      ~{if defined(number_cores_use) then ("-p " +  '"' + number_cores_use + '"') else ""} \
      ~{if defined(threshold_average_nregions) then ("-q " +  '"' + threshold_average_nregions + '"') else ""} \
      ~{true="-R" false="" chain_receptor_gene} \
      ~{if defined(species_allowed_values) then ("-S " +  '"' + species_allowed_values + '"') else ""} \
      ~{true="--unmapped" false="" unmapped} \
      ~{true="--use-kabat" false="" use_kabat}
  >>>
  parameter_meta {
    number_reads_take: "Number of reads to take. [default = all]"
    number_cores_use: "Number of cores to use. [default = all available processors]"
    threshold_average_nregions: "Threshold for average quality of mutations and N-regions of CDR3 [default = 25]"
    chain_receptor_gene: "<chain1,...>                        Receptor gene and chain. Several chains can be specified, separated with commas. Allowed values: [TRA, TRB, TRG, TRD, IGH, IGL, IGK]. [required] --report <file>                     File to store MIGMAP report. Will append report line if file exists."
    species_allowed_values: "Species. Allowed values: [human, mouse, rat, rabbit, rhesus_monkey]. [required]"
    unmapped: "<fastq[.gz]>             Output unmapped reads in specified file."
    use_kabat: "Will use KABAT nomenclature for CDR/FW partitioning. [default = use IMGT nomenclature]"
    input_dot: ""
  }
}