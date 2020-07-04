version 1.0

task BactopiaSearch.py {
  input {
    Boolean? exact_tax_on
    String? outdir
    String? prefix
    Int? limit
    Int? min_read_length
    Int? min_base_count
    Int? min_coverage
    Int? genome_size
    String str
  }
  command <<<
    bactopia-search.py \
      ~{str} \
      ~{true="--exact_taxon" false="" exact_tax_on} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_read_length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(min_base_count) then ("--min_base_count " +  '"' + min_base_count + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(genome_size) then ("--genome_size " +  '"' + genome_size + '"') else ""}
  >>>
  parameter_meta {
    exact_tax_on: "Exclude Taxon ID descendents."
    outdir: "Directory to write output. (Default: .)"
    prefix: "Prefix to use for output file names. (Default: ena)"
    limit: "Maximum number of results to return. (Default: 1000000)"
    min_read_length: "Filters samples based on minimum mean read length. (Default: No filter)"
    min_base_count: "Filters samples based on minimum basepair count. (Default: No filter)"
    min_coverage: "Filter samples based on minimum coverage (requires --genome_size)"
    genome_size: "Genome size to estimate coverage (requires --coverage)"
    str: "Taxon ID or Study accession"
  }
}