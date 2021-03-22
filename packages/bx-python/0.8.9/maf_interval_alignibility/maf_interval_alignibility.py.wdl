version 1.0

task MafIntervalAlignibilitypy {
  input {
    String? species
    String? prefix
    Boolean? use_cache
  }
  command <<<
    maf_interval_alignibility_py \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (use_cache) then "--usecache" else ""}
  >>>
  parameter_meta {
    species: "Comma separated list of species to include"
    prefix: "Prefix to add to each interval chrom (usually\\nreference species)"
    use_cache: "Use a cache that keeps blocks of the MAF files in\\nmemory (requires ~20MB per MAF)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}