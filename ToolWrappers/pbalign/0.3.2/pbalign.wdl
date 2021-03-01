version 1.0

task Pbalign {
  input {
    File? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? pdb
    Boolean? profile
    String? region_table
    File? config_file
    File? pulse_file
    String? algorithm
    Int? max_hits
    Int? min_anchor_size
    Int? max_match
    String? use_ccs
    Boolean? no_split_sub_reads
    Boolean? concordant
    Int? nproc
    String? algorithm_options
    Int? max_divergence
    Int? min_accuracy
    Int? minlength
    String? score_cut_off
    String? hit_policy
    Boolean? filter_adapter_only
    File? unaligned
    Int? seed
    Directory? tmpdir
    String input_file_name
    String reference_path
    String output_file_name
  }
  command <<<
    pbalign \
      ~{input_file_name} \
      ~{reference_path} \
      ~{output_file_name} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if defined(region_table) then ("--regionTable " +  '"' + region_table + '"') else ""} \
      ~{if defined(config_file) then ("--configFile " +  '"' + config_file + '"') else ""} \
      ~{if defined(pulse_file) then ("--pulseFile " +  '"' + pulse_file + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(max_hits) then ("--maxHits " +  '"' + max_hits + '"') else ""} \
      ~{if defined(min_anchor_size) then ("--minAnchorSize " +  '"' + min_anchor_size + '"') else ""} \
      ~{if defined(max_match) then ("--maxMatch " +  '"' + max_match + '"') else ""} \
      ~{if defined(use_ccs) then ("--useccs " +  '"' + use_ccs + '"') else ""} \
      ~{if (no_split_sub_reads) then "--noSplitSubreads" else ""} \
      ~{if (concordant) then "--concordant" else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(algorithm_options) then ("--algorithmOptions " +  '"' + algorithm_options + '"') else ""} \
      ~{if defined(max_divergence) then ("--maxDivergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(min_accuracy) then ("--minAccuracy " +  '"' + min_accuracy + '"') else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{if defined(score_cut_off) then ("--scoreCutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{if defined(hit_policy) then ("--hitPolicy " +  '"' + hit_policy + '"') else ""} \
      ~{if (filter_adapter_only) then "--filterAdapterOnly" else ""} \
      ~{if defined(unaligned) then ("--unaligned " +  '"' + unaligned + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpDir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to\\nstdout. (default: None)"
    log_level: "Set log level (default: INFO)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress\\noutput. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    pdb: "Enable Python debugger (default: False)"
    profile: "Print runtime profile at exit (default: False)"
    region_table: "Specify a region table for filtering reads. (default:\\nNone)"
    config_file: "Specify a set of user-defined argument values.\\n(default: None)"
    pulse_file: "When input reads are in fasta format and output is a\\ncmp.h5 this option can specify pls.h5 or bas.h5 or\\nFOFN files from which pulse metrics can be loaded for\\nQuiver. (default: None)"
    algorithm: "Select an aligorithm from ('blasr', 'bowtie', 'gmap').\\n(default: blasr)"
    max_hits: "The maximum number of matches of each read to the\\nreference sequence that will be evaluated. (default:\\nNone)"
    min_anchor_size: "The minimum anchor size defines the length of the read\\nthat must match against the reference sequence.\\n(default: None)"
    max_match: "BLASR maxMatch option. (Will be overriden if is also\\nset in algorithmOptions) (default: 30)"
    use_ccs: "Map the ccsSequence to the genome first, then align\\nsubreads to the interval that the CCS reads mapped to.\\nuseccs: only maps subreads that span the length of the\\ntemplate. useccsall: maps all subreads. useccsdenovo:\\nmaps ccs only. (default: None)"
    no_split_sub_reads: "Do not split reads into subreads even if subread\\nregions are available. (default: False)"
    concordant: "Map subreads of a ZMW to the same genomic location.\\n(default: False)"
    nproc: "Number of threads. (default: 8)"
    algorithm_options: "Pass alignment options through. (default: None)"
    max_divergence: "The maximum allowed percentage divergence of a read\\nfrom the reference sequence. (default: 30.0)"
    min_accuracy: "The minimum concordance of alignments that will be\\nevaluated. (default: 70.0)"
    minlength: "The minimum aligned read length of alignments that\\nwill be evaluated. (default: 50)"
    score_cut_off: "The worst score to output an alignment. (default:\\nNone)"
    hit_policy: "Specify a policy for how to treat multiple hit random\\n: selects a random hit. all : selects all hits.\\nallbest : selects all the best score hits. randombest:\\nselects a random hit from all best score hits.\\nleftmost : selects a hit which has the best score and\\nthe smallest mapping coordinate in any reference.\\n(default: randombest)"
    filter_adapter_only: "If specified, do not report adapter-only hits using\\nannotations with the reference entry. (default: False)"
    unaligned: "Output names of unaligned reads to specified file.\\n(default: None)"
    seed: "Initialize the random number generator with a none-\\nzero integer. Zero means that current system time is\\nused. (default: 1)"
    tmpdir: "Specify a directory for saving temporary files.\\n(default: /tmp)\\n"
    input_file_name: "SubreadSet or unaligned .bam"
    reference_path: "Reference DataSet or FASTA file"
    output_file_name: "Alignment results dataset"
  }
  output {
    File out_stdout = stdout()
    File out_unaligned = "${in_unaligned}"
  }
}