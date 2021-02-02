version 1.0

task MafIntervalAlignibilitypyMafFiles {
  input {
    String? species
    String? prefix
    Boolean? use_cache
    String tested_dot
  }
  command <<<
    maf_interval_alignibility_py maf_files \
      ~{tested_dot} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (use_cache) then "--usecache" else ""}
  >>>
  parameter_meta {
    species: ": Comma separated list of species to include"
    prefix: ": Prefix to add to each interval chrom (usually reference species)"
    use_cache: ":   Use a cache that keeps blocks of the MAF files in memory (requires ~20MB per MAF)"
    tested_dot: "usage: /usr/local/bin/maf_interval_alignibility.py maf_files [options] < interval_file"
  }
  output {
    File out_stdout = stdout()
  }
}