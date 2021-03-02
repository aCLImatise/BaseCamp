version 1.0

task Ganonclassify {
  input {
    File? single_reads
    Float? paired_reads
    File? ibf
    File? map_files_tabseparated
    File? tax
    Int? hierarchy_labels
    Int? min_km_ers
    Int? max_error
    Int? max_error_unique
    Int? strata_filter
    Int? offset
    String? output_prefix
    File? output_all
    Boolean? output_unclassified
    Boolean? output_single
    Int? threads
    Int? n_reads
    Int? n_batches
    Boolean? verbose
    Boolean? quiet
    Boolean? v
  }
  command <<<
    ganon_classify \
      ~{if defined(single_reads) then ("--single-reads " +  '"' + single_reads + '"') else ""} \
      ~{if defined(paired_reads) then ("--paired-reads " +  '"' + paired_reads + '"') else ""} \
      ~{if defined(ibf) then ("--ibf " +  '"' + ibf + '"') else ""} \
      ~{if defined(map_files_tabseparated) then ("--map " +  '"' + map_files_tabseparated + '"') else ""} \
      ~{if defined(tax) then ("--tax " +  '"' + tax + '"') else ""} \
      ~{if defined(hierarchy_labels) then ("--hierarchy-labels " +  '"' + hierarchy_labels + '"') else ""} \
      ~{if defined(min_km_ers) then ("--min-kmers " +  '"' + min_km_ers + '"') else ""} \
      ~{if defined(max_error) then ("--max-error " +  '"' + max_error + '"') else ""} \
      ~{if defined(max_error_unique) then ("--max-error-unique " +  '"' + max_error_unique + '"') else ""} \
      ~{if defined(strata_filter) then ("--strata-filter " +  '"' + strata_filter + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (output_all) then "--output-all" else ""} \
      ~{if (output_unclassified) then "--output-unclassified" else ""} \
      ~{if (output_single) then "--output-single" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(n_reads) then ("--n-reads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(n_batches) then ("--n-batches " +  '"' + n_batches + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  parameter_meta {
    single_reads: "File[s] with single-end reads .fq .fastq .fasta\\n.fa (e.g. file1.fq[.gz],[file2.fq[.gz] ...\\nfileN.fq[.gz]])"
    paired_reads: "Pairs of files with paired-end reads .fq .fastq\\n.fasta .fa (e.g.\\nfile1.1.fq[.gz],file1.2.fq[.gz],[file2.1.fq[.gz],file2.2.fq[.gz] ...\\nfileN.1.fq[.gz],fileN.2.fq[.gz]])"
    ibf: "ibf (Interleaved Bloom Filter) file[s] (e.g. -b\\na.ibf,b.ibf OR -b a.ibf -b b.ibf )"
    map_files_tabseparated: "map files[s]. Tab-separated file mapping target\\ngroups (taxids, assemblies) and bin identifiers\\nwith the following fields: target <tab> bin id\\n(e.g. -g a.map,b.map OR -g a.map -g b.map)"
    tax: "tax (taxonomy) files[s]. Tab-separated file\\nwith a complete tree with the following fields:\\nnode <tab> parent node <tab> rank <tab> name (e.g.\\n-g a.tax,b.tax OR -g a.tax -g b.tax)"
    hierarchy_labels: "Hierarchy labels for the database files\\n(hierarchy follows the order of the sorted labels)\\n(e.g. 1_host,2_target,1_host,3). Default:\\n'1_default'"
    min_km_ers: "Minimum percentage of k-mers matching for a\\nread to to be assigned [muttualy exclusive\\n--max-error]. One per filter. Default: 0.25"
    max_error: "Maximum number of errors/mismatches allowed\\n[muttualy exclusive --min-kmers]. One per filter."
    max_error_unique: "Maximum number of errors/mismatches allowed for\\nunique matches after filtering. One per\\nhiearchy label."
    strata_filter: "Additional errors allowed (relative to the best\\nmatch) to filter and select matches. -1 for no\\nfiltering. One per hiearchy label. Default: 0"
    offset: "Offset for skipping k-mers while counting.\\nFunction must be enabled on compilation time with\\n-DGANON_OFFSET=ON. Default: 1 = no offset"
    output_prefix: "Output prefix for output files (prefix.lca,\\nprefix.rep, prefix.all, prefix.unc). If multi-level\\nhiearchy is provded, files are generated\\naccordingly (prefix.hiearchy.lca, ...). Omit for\\noutput to STDOUT (only .lca will be printed)"
    output_all: "Output file with all matches (prefix.all) [it\\ncan be very big]"
    output_unclassified: "Output unclassified read ids (prefix.unc)"
    output_single: "Generate only one output (prefix.lca and\\nprefix.rep) even with multiple hierarchy levels"
    threads: "Number of threads"
    n_reads: "Number of reads for each batch. Default: 400"
    n_batches: "Number of batches of n-reads to hold in memory.\\nDefault: 1000"
    verbose: "Verbose output mode"
    quiet: "Quiet output mode (only outputs errors and\\nwarnings to the STDERR)"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_all = "${in_output_all}"
  }
}