version 1.0

task SvtkResolve {
  input {
    Int? cytoband_s
    File? disc_file
    File? disc_file_list
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
      ~{if defined(cytoband_s) then ("--cytobands " +  '"' + cytoband_s + '"') else ""} \
      ~{if defined(disc_file) then ("--discfile " +  '"' + disc_file + '"') else ""} \
      ~{if defined(disc_file_list) then ("--discfile-list " +  '"' + disc_file_list + '"') else ""} \
      ~{if defined(min_rescan_pe_support) then ("--min-rescan-pe-support " +  '"' + min_rescan_pe_support + '"') else ""} \
      ~{if defined(pe_blacklist) then ("--pe-blacklist " +  '"' + pe_blacklist + '"') else ""} \
      ~{if defined(unresolved) then ("--unresolved " +  '"' + unresolved + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""}
  >>>
  parameter_meta {
    cytoband_s: "[--min-rescan-pe-support MIN_RESCAN_PE_SUPPORT]\\n[-x BED.GZ] [-u UNRESOLVED] [-p PREFIX] [-q QUIET]\\nraw resolved"
    disc_file: "Scraped discordant pairs. Required to attempt to\\nresolve single-ender inversions."
    disc_file_list: "Tab-delimited list of discordant pair files and\\nindices"
    min_rescan_pe_support: "Minumum discordant pairs required during single-ender\\nrescan."
    pe_blacklist: "Tabix indexed bed of blacklisted regions. Any\\nanomalous pair falling inside one of these regions is\\nexcluded from PE rescanning."
    unresolved: "Unresolved complex breakpoints and CNV."
    prefix: "Variant prefix [CPX_]"
    quiet: "Disable progress logging to stderr.\\n"
    raw: "Filtered breakpoints and CNV intervals."
    resolved: "Resolved simple and complex variants."
  }
  output {
    File out_stdout = stdout()
  }
}