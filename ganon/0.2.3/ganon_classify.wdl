version 1.0

task GanonClassify {
  input {
    String? single_reads
    String? paired_reads
    String? ibf
    String? map_files_tabseparated
    String? tax
    String? hierarchy_labels
    String? min_km_ers
    String? max_error
    String? max_error_unique
    String? strata_filter
    String? offset
    String? output_prefix
    Boolean? output_all
    Boolean? output_unclassified
    Boolean? output_single
    String? threads
    String? n_reads
    String? n_batches
    Boolean? verbose
    Boolean? quiet
    String? option_dot_dot_dot
  }
  command <<<
    ganon-classify \
      ~{option_dot_dot_dot} \
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
      ~{true="--output-all" false="" output_all} \
      ~{true="--output-unclassified" false="" output_unclassified} \
      ~{true="--output-single" false="" output_single} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(n_reads) then ("--n-reads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(n_batches) then ("--n-batches " +  '"' + n_batches + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    single_reads: "File[s] with single-end reads .fq .fastq .fasta .fa (e.g. file1.fq[.gz],[file2.fq[.gz] ... fileN.fq[.gz]])"
    paired_reads: "Pairs of files with paired-end reads .fq .fastq .fasta .fa (e.g. file1.1.fq[.gz],file1.2.fq[.gz],[file2.1.fq[.gz],file2.2.fq[.gz] ... fileN.1.fq[.gz],fileN.2.fq[.gz]])"
    ibf: "ibf (Interleaved Bloom Filter) file[s] (e.g. -b a.ibf,b.ibf OR -b a.ibf -b b.ibf )"
    map_files_tabseparated: "map files[s]. Tab-separated file mapping target groups (taxids, assemblies) and bin identifiers with the following fields: target <tab> bin id (e.g. -g a.map,b.map OR -g a.map -g b.map)"
    tax: "tax (taxonomy) files[s]. Tab-separated file with a complete tree with the following fields: node <tab> parent node <tab> rank <tab> name (e.g. -g a.tax,b.tax OR -g a.tax -g b.tax)"
    hierarchy_labels: "Hierarchy labels for the database files (hierarchy follows the order of the sorted labels) (e.g. 1_host,2_target,1_host,3). Default: '1_default'"
    min_km_ers: "Minimum percentage of k-mers matching for a read to to be assigned [muttualy exclusive --max-error]. One per filter. Default: 0.25"
    max_error: "Maximum number of errors/mismatches allowed [muttualy exclusive --min-kmers]. One per filter."
    max_error_unique: "Maximum number of errors/mismatches allowed for unique matches after filtering. One per hiearchy label."
    strata_filter: "Additional errors allowed (relative to the best match) to filter and select matches. -1 for no filtering. One per hiearchy label. Default: 0"
    offset: "Offset for skipping k-mers while counting. Function must be enabled on compilation time with -DGANON_OFFSET=ON. Default: 1 = no offset"
    output_prefix: "Output prefix for output files (prefix.lca, prefix.rep, prefix.all, prefix.unc). If multi-level hiearchy is provded, files are generated accordingly (prefix.hiearchy.lca, ...). Omit for output to STDOUT (only .lca will be printed)"
    output_all: "Output file with all matches (prefix.all) [it can be very big]"
    output_unclassified: "Output unclassified read ids (prefix.unc)"
    output_single: "Generate only one output (prefix.lca and prefix.rep) even with multiple hierarchy levels"
    threads: "Number of threads"
    n_reads: "Number of reads for each batch. Default: 400"
    n_batches: "Number of batches of n-reads to hold in memory. Default: 1000"
    verbose: "Verbose output mode"
    quiet: "Quiet output mode (only outputs errors and warnings to the STDERR)"
    option_dot_dot_dot: ""
  }
}