version 1.0

task SvtkResolve {
  input {
    File? disc_file
    File? disc_file_list
    String? mei_bed
    File? cytoband_s
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    disc_file: "Scraped discordant pairs. Required to attempt to\\nresolve single-ender inversions."
    disc_file_list: "Tab-delimited list of discordant pair files and\\nindices"
    mei_bed: "Mobile element insertion bed. Required to classify\\ninverted insertions."
    cytoband_s: "Cytoband file. Required to correctly classify\\ninterchromosomal events."
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