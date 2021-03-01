version 1.0

task WindowBed {
  input {
    Boolean? a_bam
    Boolean? ub_am
    Boolean? bed
    Boolean? base_pairs_added_upstream
    Boolean? base_pairs_left
    Boolean? base_pairs_added_downstream
    Boolean? sw
    Boolean? only_report_same
    Boolean? only_report_opposite
    Boolean? write_original_entry
    Boolean? entry_report_number
    Boolean? only_report_entries
    File? header
    String? b
    String? a
    String bed_tools
    String window
  }
  command <<<
    windowBed \
      ~{bed_tools} \
      ~{window} \
      ~{if (a_bam) then "-abam" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (base_pairs_added_upstream) then "-w" else ""} \
      ~{if (base_pairs_left) then "-l" else ""} \
      ~{if (base_pairs_added_downstream) then "-r" else ""} \
      ~{if (sw) then "-sw" else ""} \
      ~{if (only_report_same) then "-sm" else ""} \
      ~{if (only_report_opposite) then "-Sm" else ""} \
      ~{if (write_original_entry) then "-u" else ""} \
      ~{if (entry_report_number) then "-c" else ""} \
      ~{if (only_report_entries) then "-v" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_bam: "The A input file is in BAM format.  Output will be BAM as well. Replaces -a."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    bed: "When using BAM input (-abam), write output as BED. The default\\nis to write output in BAM when using -abam."
    base_pairs_added_upstream: "Base pairs added upstream and downstream of each entry\\nin A when searching for overlaps in B.\\n- Creates symmetrical \\\"windows\\\" around A.\\n- Default is 1000 bp.\\n- (INTEGER)"
    base_pairs_left: "Base pairs added upstream (left of) of each entry\\nin A when searching for overlaps in B.\\n- Allows one to define asymmetrical \\\"windows\\\".\\n- Default is 1000 bp.\\n- (INTEGER)"
    base_pairs_added_downstream: "Base pairs added downstream (right of) of each entry\\nin A when searching for overlaps in B.\\n- Allows one to define asymmetrical \\\"windows\\\".\\n- Default is 1000 bp.\\n- (INTEGER)"
    sw: "Define -l and -r based on strand.  For example if used, -l 500\\nfor a negative-stranded feature will add 500 bp downstream.\\n- Default = disabled."
    only_report_same: "Only report hits in B that overlap A on the _same_ strand.\\n- By default, overlaps are reported without respect to strand."
    only_report_opposite: "Only report hits in B that overlap A on the _opposite_ strand.\\n- By default, overlaps are reported without respect to strand."
    write_original_entry: "Write the original A entry _once_ if _any_ overlaps found in B.\\n- In other words, just report the fact >=1 hit was found."
    entry_report_number: "For each entry in A, report the number of overlaps with B.\\n- Reports 0 for A entries that have no overlap with B.\\n- Overlaps restricted by -w, -l, and -r."
    only_report_entries: "Only report those entries in A that have _no overlaps_ with B.\\n- Similar to \\\"grep -v.\\\""
    header: "the header from the A file prior to results."
    b: ""
    a: ""
    bed_tools: ""
    window: ""
  }
  output {
    File out_stdout = stdout()
  }
}