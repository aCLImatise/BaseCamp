version 1.0

task HicFindRestSite {
  input {
    File? fast_a
    Int? search_pattern
    File? outfile
  }
  command <<<
    hicFindRestSite \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(search_pattern) then ("--searchPattern " +  '"' + search_pattern + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Path to fasta file for the organism genome."
    search_pattern: "Search pattern. For example, for HindIII this pattern\\nis \\\"AAGCTT\\\". Both, forward and reverse strand are\\nsearched for a match. The pattern is a regexp and can\\ncontain regexp specif syntax (see\\nhttps://docs.python.org/2/library/re.html). For\\nexample the patternCG..GC will find all occurrence of\\nCG followed by any two bases and then GC."
    outfile: "Name for the resulting bed file."
  }
  output {
    File out_stdout = stdout()
  }
}