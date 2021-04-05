version 1.0

task Bactopiasearchpy {
  input {
    Boolean? exact_tax_on
    Directory? outdir
    File? prefix
    Int? limit
    Int? accession_limit
    Int? bio_sample_subset
    Int? min_read_length
    Int? min_base_count
    Int? min_coverage
    Int? genome_size
    String bac_topia
    String search
  }
  command <<<
    bactopia_search_py \
      ~{bac_topia} \
      ~{search} \
      ~{if (exact_tax_on) then "--exact_taxon" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(accession_limit) then ("--accession_limit " +  '"' + accession_limit + '"') else ""} \
      ~{if defined(bio_sample_subset) then ("--biosample_subset " +  '"' + bio_sample_subset + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_read_length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(min_base_count) then ("--min_base_count " +  '"' + min_base_count + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(genome_size) then ("--genome_size " +  '"' + genome_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.4--0"
  }
  parameter_meta {
    exact_tax_on: "Exclude Taxon ID descendents."
    outdir: "Directory to write output. (Default: .)"
    prefix: "Prefix to use for output file names. (Default: ena)"
    limit: "Maximum number of results (per query) to return.\\n(Default: 1000000)"
    accession_limit: "Maximum number of accessions to query at once.\\n(Default: 5000)"
    bio_sample_subset: "If a BioSample has multiple Experiments, pick a random\\nsubset. (Default: Return All)"
    min_read_length: "Filters samples based on minimum mean read length.\\n(Default: No filter)"
    min_base_count: "Filters samples based on minimum basepair count.\\n(Default: No filter)"
    min_coverage: "Filter samples based on minimum coverage (requires"
    genome_size: "Genome size to estimate coverage (requires --coverage)"
    bac_topia: ""
    search: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}