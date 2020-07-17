version 1.0

task SvtkResolve {
  input {
    String? disc_file
    String? disc_file_list
    String? mei_bed
    String? cytoband_s
    Int? min_rescan_pe_support
    String? pe_blacklist
    String? unresolved
    String? prefix
    String? quiet
    String raw
    String resolved
  }
  command <<<
    svtk resolve \
      ~{raw} \
      ~{resolved} \
      ~{if defined(disc_file) then ("--discfile " +  '"' + disc_file + '"') else ""} \
      ~{if defined(disc_file_list) then ("--discfile-list " +  '"' + disc_file_list + '"') else ""} \
      ~{if defined(mei_bed) then ("--mei-bed " +  '"' + mei_bed + '"') else ""} \
      ~{if defined(cytoband_s) then ("--cytobands " +  '"' + cytoband_s + '"') else ""} \
      ~{if defined(min_rescan_pe_support) then ("--min-rescan-pe-support " +  '"' + min_rescan_pe_support + '"') else ""} \
      ~{if defined(pe_blacklist) then ("--pe-blacklist " +  '"' + pe_blacklist + '"') else ""} \
      ~{if defined(unresolved) then ("--unresolved " +  '"' + unresolved + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""}
  >>>
  parameter_meta {
    disc_file: "Scraped discordant pairs. Required to attempt to resolve single-ender inversions."
    disc_file_list: "Tab-delimited list of discordant pair files and indices"
    mei_bed: "Mobile element insertion bed. Required to classify inverted insertions."
    cytoband_s: "Cytoband file. Required to correctly classify interchromosomal events."
    min_rescan_pe_support: "Minumum discordant pairs required during single-ender rescan."
    pe_blacklist: "Tabix indexed bed of blacklisted regions. Any anomalous pair falling inside one of these regions is excluded from PE rescanning."
    unresolved: "Unresolved complex breakpoints and CNV."
    prefix: "Variant prefix [CPX_]"
    quiet: "Disable progress logging to stderr."
    raw: "Filtered breakpoints and CNV intervals."
    resolved: "Resolved simple and complex variants."
  }
}