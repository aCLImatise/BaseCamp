version 1.0

task PhyluceProbeRemoveDuplicateHitsFromProbesUsingLastz {
  input {
    String? fast_a
    String? last_z
    String? probe_prefix
    String? probe_regex
    String? probe_bed
    String? locus_bed
    Boolean? long
  }
  command <<<
    phyluce_probe_remove_duplicate_hits_from_probes_using_lastz \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(probe_prefix) then ("--probe-prefix " +  '"' + probe_prefix + '"') else ""} \
      ~{if defined(probe_regex) then ("--probe-regex " +  '"' + probe_regex + '"') else ""} \
      ~{if defined(probe_bed) then ("--probe-bed " +  '"' + probe_bed + '"') else ""} \
      ~{if defined(locus_bed) then ("--locus-bed " +  '"' + locus_bed + '"') else ""} \
      ~{true="--long" false="" long}
  >>>
  parameter_meta {
    fast_a: "The fasta file to screen"
    last_z: "The lastz file to use"
    probe_prefix: "The prefix (e.g. \"uce-\") added to all probes designed"
    probe_regex: "The regular expression to use for matching probes"
    probe_bed: "The path to a file contaning the probe coordinates in BED format"
    locus_bed: "The path to a file contaning the locus coordinates in BED format"
    long: "If the lastz output is the longfield format"
  }
}