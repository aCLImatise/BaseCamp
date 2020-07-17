version 1.0

task HicFindRestSite {
  input {
    String? fast_a
    String? search_pattern
    String? outfile
  }
  command <<<
    hicFindRestSite \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(search_pattern) then ("--searchPattern " +  '"' + search_pattern + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Path to fasta file for the organism genome."
    search_pattern: "Search pattern. For example, for HindIII this pattern is \"AAGCTT\". Both, forward and reverse strand are searched for a match. The pattern is a regexp and can contain regexp specif syntax (see https://docs.python.org/2/library/re.html). For example the patternCG..GC will find all occurrence of CG followed by any two bases and then GC."
    outfile: "Name for the resulting bed file."
  }
}