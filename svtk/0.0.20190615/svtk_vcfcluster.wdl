version 1.0

task SvtkVcfcluster {
  input {
    String? region
    Int? dist
    Float? frac
    String? blacklist
    Int? sv_size
    String? prefix
    String? sv_types
    Boolean? ignore_sv_types
    String? sample_overlap
    Boolean? preserve_ids
    Boolean? preserve_header
  }
  command <<<
    svtk vcfcluster \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(frac) then ("--frac " +  '"' + frac + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(sv_size) then ("--svsize " +  '"' + sv_size + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(sv_types) then ("--svtypes " +  '"' + sv_types + '"') else ""} \
      ~{if (ignore_sv_types) then "--ignore-svtypes" else ""} \
      ~{if defined(sample_overlap) then ("--sample-overlap " +  '"' + sample_overlap + '"') else ""} \
      ~{if (preserve_ids) then "--preserve-ids" else ""} \
      ~{if (preserve_header) then "--preserve-header" else ""}
  >>>
  parameter_meta {
    region: "Restrict clustering to genomic region."
    dist: "Maximum clustering distance. Suggested to use max of\\nmedian + 7*MAD over samples. [500]"
    frac: "Minimum reciprocal overlap between variants. [0.1]"
    blacklist: "Tabix indexed bed of blacklisted regions. Any SV with\\na breakpoint falling inside one of these regions is\\nfiltered from output."
    sv_size: "Minimum SV size to report for intrachromosomal events.\\n[0]"
    prefix: "Prefix for merged variant IDs. [MERGED]"
    sv_types: "Comma delimited list of svtypes to cluster\\n[DEL,DUP,INV,BND]"
    ignore_sv_types: "Ignore svtypes when clustering."
    sample_overlap: "Minimum sample overlap for two variants to be\\nclustered together."
    preserve_ids: "Include list of IDs of constituent records in each"
    preserve_header: "Use header from clustering VCFs"
  }
  output {
    File out_stdout = stdout()
  }
}