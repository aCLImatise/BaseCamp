version 1.0

task BactopiaSearch.py {
  input {
    Boolean exactExactTaxOn
    String outdirOutdir
    String prefixPrefix
    Int limitLimit
    Int minMinReadLength
    Int minMinBaseCount
    Int minMinCoverage
    Int genomeGenomeSize
    String? strStr
  }
  command <<<
    bactopia-search.py \
      ~{strStr} \
      ~{true="--exact_taxon" false="" exactExactTaxOn} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min_read_length " +  '"' + minMinReadLength + '"') else ""} \
      ~{if defined(minMinBaseCount) then ("--min_base_count " +  '"' + minMinBaseCount + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome_size " +  '"' + genomeGenomeSize + '"') else ""}
  >>>
}