version 1.0

task OvStoreDump {
  input {
    File? mandatory_path_sequence
    File? mandatory_path_overlap
    Boolean? overlaps
    Boolean? picture
    Boolean? metadata
    Boolean? counts
    Boolean? erate_len
    String? prefix
    Boolean? raw
    Boolean? obt
    Boolean? utg
    Boolean? coords
    Boolean? hangs
    Boolean? unaligned
    Boolean? paf
    Boolean? gfa
    File? binary
    Boolean? no_five_p
    Boolean? no_three_p
    Boolean? no_container
    Boolean? no_contained
    Boolean? no_redundant
    String? query
    Int? erate
    Int? length
    String? bogart
    Boolean? no_bogart_contained
    String? no_bogart_coverage_gap
    Boolean? no_bogart_lopsided
    Boolean? no_bogart_spur
  }
  command <<<
    ovStoreDump \
      ~{if defined(mandatory_path_sequence) then ("-S " +  '"' + mandatory_path_sequence + '"') else ""} \
      ~{if defined(mandatory_path_overlap) then ("-O " +  '"' + mandatory_path_overlap + '"') else ""} \
      ~{if (overlaps) then "-overlaps" else ""} \
      ~{if (picture) then "-picture" else ""} \
      ~{if (metadata) then "-metadata" else ""} \
      ~{if (counts) then "-counts" else ""} \
      ~{if (erate_len) then "-eratelen" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (obt) then "-obt" else ""} \
      ~{if (utg) then "-utg" else ""} \
      ~{if (coords) then "-coords" else ""} \
      ~{if (hangs) then "-hangs" else ""} \
      ~{if (unaligned) then "-unaligned" else ""} \
      ~{if (paf) then "-paf" else ""} \
      ~{if (gfa) then "-gfa" else ""} \
      ~{if (binary) then "-binary" else ""} \
      ~{if (no_five_p) then "-no5p" else ""} \
      ~{if (no_three_p) then "-no3p" else ""} \
      ~{if (no_container) then "-nocontainer" else ""} \
      ~{if (no_contained) then "-nocontained" else ""} \
      ~{if (no_redundant) then "-noredundant" else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(erate) then ("-erate " +  '"' + erate + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(bogart) then ("-bogart " +  '"' + bogart + '"') else ""} \
      ~{if (no_bogart_contained) then "-nobogartcontained" else ""} \
      ~{if defined(no_bogart_coverage_gap) then ("-nobogartcoveragegap " +  '"' + no_bogart_coverage_gap + '"') else ""} \
      ~{if (no_bogart_lopsided) then "-nobogartlopsided" else ""} \
      ~{if (no_bogart_spur) then "-nobogartspur" else ""}
  >>>
  parameter_meta {
    mandatory_path_sequence: "mandatory path to a sequence store"
    mandatory_path_overlap: "mandatory path to an overlap store"
    overlaps: "[b[-e]]    dump overlaps (default)"
    picture: "[b[-e]]    dump an ASCII picture of the overlaps relative to a read"
    metadata: "[b[-3]]    tabular metadata, including the number of overlaps per read"
    counts: "[b[-e]]    the number of overlaps per read"
    erate_len: "[b[-e]]    a histogram of overlap length vs error rate"
    prefix: "* for -eratelen, write histogram to name.dat\\nand also output a gnuplot script to name.gp\\n* for -binary, mandatory, write overlaps to name.ovb"
    raw: "uncorrected raw reads"
    obt: "corrected reads"
    utg: "trimmed reads"
    coords: "as coordinates on each read (default)"
    hangs: "as dovetail hangs"
    unaligned: "as unaligned regions on each read"
    paf: "as miniasm Pairwise mApping Format"
    gfa: "as Graphical Fragment Assembly format"
    binary: "as an overlapper output file (needs -prefix)"
    no_five_p: "do not show oevrlaps off the 5' end of the A read"
    no_three_p: "do not show overlaps off the 3' end of the A read"
    no_container: "do not show overlaps that contain some other B read"
    no_contained: "do not show overlaps that are contained in some other B read"
    no_redundant: "do not show overlaps where the A read ID is more than the B read ID"
    query: "[-b]         display only overlaps that are to these other B read IDs"
    erate: "[-max]     display only overlaps less than f fraction error"
    length: "[-max]    display only overlaps between min and max bases long"
    bogart: "annotate a picture with labels from bogart asm.best.edges output"
    no_bogart_contained: "do not show overlaps involving contained reads"
    no_bogart_coverage_gap: "not show overlaps involving coverage gap edges"
    no_bogart_lopsided: "do not show overlaps involving lopsided edges"
    no_bogart_spur: "do not show iverlaps involving spur reads"
  }
  output {
    File out_stdout = stdout()
    File out_binary = "${in_binary}"
  }
}