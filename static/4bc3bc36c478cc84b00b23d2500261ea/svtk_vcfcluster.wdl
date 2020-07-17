version 1.0

task SvtkVcfcluster {
  input {
    String? region
    String? dist
    String? frac
    String? blacklist
    String? sv_size
    String? prefix
    String? sv_types
    Boolean? ignore_sv_types
    String? sample_overlap
    Boolean? preserve_ids
    Boolean? preserve_genotypes
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
      ~{true="--ignore-svtypes" false="" ignore_sv_types} \
      ~{if defined(sample_overlap) then ("--sample-overlap " +  '"' + sample_overlap + '"') else ""} \
      ~{true="--preserve-ids" false="" preserve_ids} \
      ~{true="--preserve-genotypes" false="" preserve_genotypes} \
      ~{true="--preserve-header" false="" preserve_header}
  >>>
  parameter_meta {
    region: "Restrict clustering to genomic region."
    dist: "Maximum clustering distance. Suggested to use max of median + 7*MAD over samples. [500]"
    frac: "Minimum reciprocal overlap between variants. [0.1]"
    blacklist: "Tabix indexed bed of blacklisted regions. Any SV with a breakpoint falling inside one of these regions is filtered from output."
    sv_size: "Minimum SV size to report for intrachromosomal events. [0]"
    prefix: "Prefix for merged variant IDs. [MERGED]"
    sv_types: "Comma delimited list of svtypes to cluster [DEL,DUP,INV,BND]"
    ignore_sv_types: "Ignore svtypes when clustering."
    sample_overlap: "Minimum sample overlap for two variants to be clustered together."
    preserve_ids: "Include list of IDs of constituent records in each cluster."
    preserve_genotypes: "In a set of clustered variants, report best (highest GQ) non-reference genotype when available."
    preserve_header: "Use header from clustering VCFs"
  }
}