version 1.0

task TigStore {
  input {
    File? path_gatekeeper_store
    File? path_tigstore_version
    String? up
    String? cp
    String? dump_something_store
    String? unitig_dump_dump
    String? contig_dump_dump
    Boolean? dump_unitigs_d
    Boolean? dump_contigs_d
    Int? n_reads
    String? dump_something_multialign
    File? change_properties_multialigns
    File? construct_new_store
    String? replace_multialign_i
    Boolean? replace_multialign_next
    Boolean? compress
    String? width_of_page
    String? spacing_reads_same
    Directory? output_files_written
    String unit_ig_list
    String contig_list
    String frags
    String unit_igs
    String consensus_gapped
    String layout
    String multi_align
    String mate_pair
    String sizes
    String coverage
    String overlap
    String f_map
  }
  command <<<
    tigStore \
      ~{unit_ig_list} \
      ~{contig_list} \
      ~{frags} \
      ~{unit_igs} \
      ~{consensus_gapped} \
      ~{layout} \
      ~{multi_align} \
      ~{mate_pair} \
      ~{sizes} \
      ~{coverage} \
      ~{overlap} \
      ~{f_map} \
      ~{if defined(path_gatekeeper_store) then ("-g " +  '"' + path_gatekeeper_store + '"') else ""} \
      ~{if defined(path_tigstore_version) then ("-t " +  '"' + path_tigstore_version + '"') else ""} \
      ~{if defined(up) then ("-up " +  '"' + up + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(dump_something_store) then ("-D " +  '"' + dump_something_store + '"') else ""} \
      ~{if defined(unitig_dump_dump) then ("-u " +  '"' + unitig_dump_dump + '"') else ""} \
      ~{if defined(contig_dump_dump) then ("-c " +  '"' + contig_dump_dump + '"') else ""} \
      ~{if (dump_unitigs_d) then "-U" else ""} \
      ~{if (dump_contigs_d) then "-C" else ""} \
      ~{if defined(n_reads) then ("-nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(dump_something_multialign) then ("-d " +  '"' + dump_something_multialign + '"') else ""} \
      ~{if defined(change_properties_multialigns) then ("-E " +  '"' + change_properties_multialigns + '"') else ""} \
      ~{if defined(construct_new_store) then ("-B " +  '"' + construct_new_store + '"') else ""} \
      ~{if defined(replace_multialign_i) then ("-R " +  '"' + replace_multialign_i + '"') else ""} \
      ~{if (replace_multialign_next) then "-N" else ""} \
      ~{if (compress) then "-compress" else ""} \
      ~{if defined(width_of_page) then ("-w " +  '"' + width_of_page + '"') else ""} \
      ~{if defined(spacing_reads_same) then ("-s " +  '"' + spacing_reads_same + '"') else ""} \
      ~{if defined(output_files_written) then ("-o " +  '"' + output_files_written + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_gatekeeper_store: "Path to the gatekeeper store"
    path_tigstore_version: "<v>       Path to the tigStore, and version to use"
    up: "...limit to unitigs in partition <p>"
    cp: "...limit to contigs in partition <p>"
    dump_something_store: "Dump something about the store"
    unitig_dump_dump: "[-id]            Unitig to dump (for -d option); if A-B, dump tigs from id A to id B, inclusive"
    contig_dump_dump: "[-id]            Contig to dump (for -d option); if A-B, dump tigs from id A to id B, inclusive"
    dump_unitigs_d: "Dump ALL unitigs (for -d option)"
    dump_contigs_d: "Dump ALL contigs (for -d option)"
    n_reads: "max       Dump tigs with between min and max reads (inclusive)"
    dump_something_multialign: "Dump something about a multialign (-c or -u) in the store"
    change_properties_multialigns: "Change properties of multialigns"
    construct_new_store: "Construct a new store with unitigs in 'layout-file'.  Store versions\\nbefore that specified on the '-t' option are created but are empty."
    replace_multialign_i: "Replace a multialign with this one (type and id are from the layout)\\nThe multialign is replaced in version <v> from -t."
    replace_multialign_next: "Replace a multialign in the next version of the store.  This option is\\nneeded if the version of the store to add a multialign does not exist.\\nThe multialign is replaced in version <v>+1 from -t."
    compress: "Move tigs from earlier versions into the specified version.  This removes\\nhistorical versions of unitigs/contigs, and can save tremendous storage space,\\nbut makes it impossible to back up the assembly past the specified versions"
    width_of_page: "Width of the page."
    spacing_reads_same: "Spacing between reads on the same line."
    output_files_written: "Output files will be written to 'prefix.*' in the current directory.\\n(defaults to 'tigStore' (the -t option) if not set.)"
    unit_ig_list: "...a list of the unitigs in the store"
    contig_list: "...a list of the contigs in the store"
    frags: "...a list of fragments"
    unit_igs: "...a list of unitigs"
    consensus_gapped: "...the consensus sequence, with gaps as indicated in the multialignment"
    layout: "...the layout"
    multi_align: "...the full multialignment"
    mate_pair: "...an analysis of the mate pairs"
    sizes: "...an analysis of sizes of the tigs"
    coverage: "...an analysis of read coverage of the tigs"
    overlap: "...an analysis of read overlaps in the tigs"
    f_map: "...a map from fragment IID to unitig IID"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_files_written = "${in_output_files_written}"
  }
}