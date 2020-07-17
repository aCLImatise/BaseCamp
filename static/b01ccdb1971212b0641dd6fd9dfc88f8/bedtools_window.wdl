version 1.0

task BedtoolsWindow {
  input {
    Boolean? a_bam
    Boolean? ub_am
    Boolean? bed
    Boolean? base_pairs_added_upstream_downstream
    Boolean? base_pairs_added_upstream_left
    Boolean? base_pairs_added_downstream
    Boolean? sw
    Boolean? only_report_same
    Boolean? only_report_opposite
    Boolean? write_original_entry
    Boolean? entry_report_number
    Boolean? only_report_entries
    String? header
    String? a
    String? b
  }
  command <<<
    bedtools window \
      ~{true="-abam" false="" a_bam} \
      ~{true="-ubam" false="" ub_am} \
      ~{true="-bed" false="" bed} \
      ~{true="-w" false="" base_pairs_added_upstream_downstream} \
      ~{true="-l" false="" base_pairs_added_upstream_left} \
      ~{true="-r" false="" base_pairs_added_downstream} \
      ~{true="-sw" false="" sw} \
      ~{true="-sm" false="" only_report_same} \
      ~{true="-Sm" false="" only_report_opposite} \
      ~{true="-u" false="" write_original_entry} \
      ~{true="-c" false="" entry_report_number} \
      ~{true="-v" false="" only_report_entries} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    a_bam: "The A input file is in BAM format.  Output will be BAM as well. Replaces -a."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    bed: "When using BAM input (-abam), write output as BED. The default is to write output in BAM when using -abam."
    base_pairs_added_upstream_downstream: "Base pairs added upstream and downstream of each entry in A when searching for overlaps in B. - Creates symmetrical \"windows\" around A. - Default is 1000 bp. - (INTEGER)"
    base_pairs_added_upstream_left: "Base pairs added upstream (left of) of each entry in A when searching for overlaps in B. - Allows one to define asymmetrical \"windows\". - Default is 1000 bp. - (INTEGER)"
    base_pairs_added_downstream: "Base pairs added downstream (right of) of each entry in A when searching for overlaps in B. - Allows one to define asymmetrical \"windows\". - Default is 1000 bp. - (INTEGER)"
    sw: "Define -l and -r based on strand.  For example if used, -l 500 for a negative-stranded feature will add 500 bp downstream. - Default = disabled."
    only_report_same: "Only report hits in B that overlap A on the _same_ strand. - By default, overlaps are reported without respect to strand."
    only_report_opposite: "Only report hits in B that overlap A on the _opposite_ strand. - By default, overlaps are reported without respect to strand."
    write_original_entry: "Write the original A entry _once_ if _any_ overlaps found in B. - In other words, just report the fact >=1 hit was found."
    entry_report_number: "For each entry in A, report the number of overlaps with B. - Reports 0 for A entries that have no overlap with B. - Overlaps restricted by -w, -l, and -r."
    only_report_entries: "Only report those entries in A that have _no overlaps_ with B. - Similar to \"grep -v.\""
    header: "the header from the A file prior to results."
    a: ""
    b: ""
  }
}