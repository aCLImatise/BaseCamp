version 1.0

task MafIntervalAlignibility.py {
  input {
    String? species
    String? prefix
    Boolean? use_cache
    String maf_files
  }
  command <<<
    maf_interval_alignibility.py \
      ~{maf_files} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--usecache" false="" use_cache}
  >>>
  parameter_meta {
    species: "Comma separated list of species to include"
    prefix: "Prefix to add to each interval chrom (usually reference species)"
    use_cache: "Use a cache that keeps blocks of the MAF files in memory (requires ~20MB per MAF)"
    maf_files: ""
  }
}