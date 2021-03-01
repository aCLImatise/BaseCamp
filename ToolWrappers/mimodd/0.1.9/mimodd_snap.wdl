version 1.0

task MimoddSnap {
  input {
    File? ofile
    File? i_format
    File? o_format
    File? header
    Int? threads
    String? memory
    Boolean? no_sort
    Boolean? quiet
    Boolean? verbose
    Boolean? cigar_strings_output
    Boolean? m_match_notation
    File? sort
    Boolean? consider_mate_pairs
    Int? max__spacing
    Int? distance__maxdist
    Int? max_seeds
    Int? max_hits
    Int? conf_diff
    Int? conf_adapt
    Boolean? error_rep
    Boolean? explore
    Boolean? stop_on_first
    String? filter_output
    Boolean? ignore
    Int? selectivity
    Boolean? xxxx__clipping
    String? gap_penalty
    Int? idx_seed_size
    Float? idx_slack
    Int? idx_overflow
    Directory? idx_out
    Boolean? no_prefetch
    Boolean? bind_threads
    String snap
  }
  command <<<
    mimodd snap \
      ~{snap} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(i_format) then ("--iformat " +  '"' + i_format + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if (no_sort) then "--no-sort" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (cigar_strings_output) then "-X" else ""} \
      ~{if (m_match_notation) then "--mmatch-notation" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (consider_mate_pairs) then "-D" else ""} \
      ~{if defined(max__spacing) then ("-s " +  '"' + max__spacing + '"') else ""} \
      ~{if defined(distance__maxdist) then ("-d " +  '"' + distance__maxdist + '"') else ""} \
      ~{if defined(max_seeds) then ("--maxseeds " +  '"' + max_seeds + '"') else ""} \
      ~{if defined(max_hits) then ("--maxhits " +  '"' + max_hits + '"') else ""} \
      ~{if defined(conf_diff) then ("--confdiff " +  '"' + conf_diff + '"') else ""} \
      ~{if defined(conf_adapt) then ("--confadapt " +  '"' + conf_adapt + '"') else ""} \
      ~{if (error_rep) then "--error-rep" else ""} \
      ~{if (explore) then "--explore" else ""} \
      ~{if (stop_on_first) then "--stop-on-first" else ""} \
      ~{if defined(filter_output) then ("--filter-output " +  '"' + filter_output + '"') else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if defined(selectivity) then ("--selectivity " +  '"' + selectivity + '"') else ""} \
      ~{if (xxxx__clipping) then "-C" else ""} \
      ~{if defined(gap_penalty) then ("--gap-penalty " +  '"' + gap_penalty + '"') else ""} \
      ~{if defined(idx_seed_size) then ("--idx-seedsize " +  '"' + idx_seed_size + '"') else ""} \
      ~{if defined(idx_slack) then ("--idx-slack " +  '"' + idx_slack + '"') else ""} \
      ~{if defined(idx_overflow) then ("--idx-overflow " +  '"' + idx_overflow + '"') else ""} \
      ~{if defined(idx_out) then ("--idx-out " +  '"' + idx_out + '"') else ""} \
      ~{if (no_prefetch) then "--no-prefetch" else ""} \
      ~{if (bind_threads) then "--bind-threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ofile: "name of the output file (required)"
    i_format: "input file format; must be fastq, gz, sam or bam\\n(default: bam)"
    o_format: "output file format (sam or bam; default: bam)"
    header: "a SAM file providing header information to be used for\\nthe output (required for input in fastq format and\\nwith unheadered SAM/BAM input, optional for headered\\nSAM/BAM input; replaces header information found in\\nthe input file"
    threads: "number of threads to use (overrides config setting)"
    memory: "maximal amount of memory to be used in GB (overrides\\nconfig setting); will be respected during sorting only"
    no_sort: "output reads in their original order, i.e., do not\\nsort by alignment location"
    quiet: "suppress original messages from SNAP"
    verbose: "verbose output (independent of SNAP)"
    cigar_strings_output: "CIGAR strings in the output should use = and X to\\nindicate matches/mismatches rather than M (alignment\\nmatch); USE OF THIS OPTION IS DISCOURAGED as =/X CIGAR\\nstrings are still not fully supported by useful third-\\nparty tools like IGV"
    m_match_notation: "legacy option retained for backwards compatibility;\\nindicates that CIGAR strings in the output should use\\nM (alignment match) rather than = and X (sequence\\n(mis-)match); -M is implied by default, use -X to turn\\noff"
    sort: "legacy option retained for backwards compatibility;\\nsort output file by alignment location; implied by\\ndefault, use --no-sort to turn off"
    consider_mate_pairs: "[RF|FR|FF|RR|ALL [RF|FR|FF|RR|ALL ...]], --discard-overlapping-mates [RF|FR|FF|RR|ALL [RF|FR|FF|RR|ALL ...]]\\nconsider overlapping mate pairs of the given\\norientation type(s) anomalous and discard them;\\ndefault: keep all overlapping mate pairs"
    max__spacing: "MAX, --spacing MIN MAX\\nmin and max spacing to allow between paired ends\\n(default: 100 10000)"
    distance__maxdist: "DISTANCE, --maxdist EDIT DISTANCE\\nmaximum edit distance allowed per read or pair\\n(default: 8)"
    max_seeds: "number of seeds to use per read (default: 25)"
    max_hits: "maximum hits to consider per seed (default: 250)"
    conf_diff: "confidence threshold (default: 2)"
    conf_adapt: "confidence adaptation threshold (default: 7)"
    error_rep: "compute error rate assuming wgsim-generated reads"
    explore: "explore some hits of overly popular seeds (useful for\\nfiltering)"
    stop_on_first: "stop on first match within edit distance limit\\n(filtering mode)"
    filter_output: "retain only certain read classes in output (a=aligned\\nonly, s=single hit only, u=unaligned only)"
    ignore: "ignore non-matching IDs in the paired-end aligner"
    selectivity: "selectivity; randomly choose 1/selectivity of the\\nreads to score"
    xxxx__clipping: "++|+x|x+|xx, --clipping ++|+x|x+|xx\\nspecify a combination of two + or x symbols to\\nindicate whether to clip low-quality bases from the\\nfront and back of reads respectively; default: clip\\nfrom front and back (-C ++)"
    gap_penalty: "specify a gap penalty to use when generating CIGAR\\nstrings"
    idx_seed_size: "SIZE\\nSeed size used in building the index (default: 20)"
    idx_slack: "Hash table slack for indexing (default: 0.3)"
    idx_overflow: "factor (between 1 and 1000) to set the size of the\\nindex build overflow space (default: 40)"
    idx_out: "DIR   name of the index directory to be created; if given,\\nthe index directory will be permanent, otherwise a\\ntemporary directory will be used"
    no_prefetch: "disables cache prefetching in the genome; may be\\nhelpful for machines with small caches or lots of\\ncores/cache"
    bind_threads: "bind each thread to its processor (off by default)"
    snap: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
    File out_o_format = "${in_o_format}"
    File out_sort = "${in_sort}"
  }
}