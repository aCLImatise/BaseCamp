version 1.0

task Epang {
  input {
    Boolean? verbose
    File? b_fast
    Boolean? dump_binary
    File? split
    File? tree
    File? ref_msa
    File? binary
    File? query
    File? model
    File? out_dir
    Float? filter_acc_lwr
    Float? filter_min_lwr
    Int? filter_min
    Int? filter_max
    Float? precision
    Boolean? redo
    String? preserve_rooting
    Float? dyn_heur
    Float? fix_heur
    Int? baseball_heur
    String? no_heur
    Int? chunk_size
    Boolean? ra_xml_blo
    Boolean? no_pre_mask
    String? rate_scalers
    Int? threads
  }
  command <<<
    epa_ng \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(b_fast) then ("--bfast " +  '"' + b_fast + '"') else ""} \
      ~{if (dump_binary) then "--dump-binary" else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(ref_msa) then ("--ref-msa " +  '"' + ref_msa + '"') else ""} \
      ~{if defined(binary) then ("--binary " +  '"' + binary + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(filter_acc_lwr) then ("--filter-acc-lwr " +  '"' + filter_acc_lwr + '"') else ""} \
      ~{if defined(filter_min_lwr) then ("--filter-min-lwr " +  '"' + filter_min_lwr + '"') else ""} \
      ~{if defined(filter_min) then ("--filter-min " +  '"' + filter_min + '"') else ""} \
      ~{if defined(filter_max) then ("--filter-max " +  '"' + filter_max + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (redo) then "--redo" else ""} \
      ~{if defined(preserve_rooting) then ("--preserve-rooting " +  '"' + preserve_rooting + '"') else ""} \
      ~{if defined(dyn_heur) then ("--dyn-heur " +  '"' + dyn_heur + '"') else ""} \
      ~{if defined(fix_heur) then ("--fix-heur " +  '"' + fix_heur + '"') else ""} \
      ~{if defined(baseball_heur) then ("--baseball-heur " +  '"' + baseball_heur + '"') else ""} \
      ~{if defined(no_heur) then ("--no-heur " +  '"' + no_heur + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if (ra_xml_blo) then "--raxml-blo" else ""} \
      ~{if (no_pre_mask) then "--no-pre-mask" else ""} \
      ~{if defined(rate_scalers) then ("--rate-scalers " +  '"' + rate_scalers + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/epa-ng:0.3.8--he513fc3_0"
  }
  parameter_meta {
    verbose: "Display debug output."
    b_fast: ":FILE        Convert the given fasta file to bfast format."
    dump_binary: "Binary Dump mode: write ref. tree in binary format then exit. NOTE: not compatible with premasking!"
    split: ":FILE ...       Takes a reference MSA (phylip/fasta/fasta.gz) and combined ref + query MSA(s) (phylip/fasta/fasta.gz) and outputs a monolithic query file (fasta), as well as a reference file (fasta), ready for use. Usage: epa-ng --split ref_alignment query_alignments+"
    tree: ":FILE Excludes: --binary\\nPath to Reference Tree file."
    ref_msa: ":FILE Excludes: --binary\\nPath to Reference MSA file."
    binary: ":FILE Excludes: --tree --ref-msa\\nPath to binary reference file, as created using --dump-binary."
    query: ":FILE        Path to Query MSA file."
    model: "=GTR+G       Description string of the model to be used, or a RAxML_info file. --model STRING | FILE See: https://github.com/amkozlov/raxml-ng/wiki/Input-data#evolutionary-model"
    out_dir: ":DIR=./\\nPath to output directory."
    filter_acc_lwr: ":FLOAT in [0 - 1] Excludes: --filter-min-lwr\\nAccumulated likelihood weight after which further placements are discarded."
    filter_min_lwr: ":FLOAT in [0 - 1]=0.01 Excludes: --filter-acc-lwr\\nMinimum likelihood weight below which a placement is discarded."
    filter_min: "=1         Minimum number of placements per sequence to include in final output."
    filter_max: "=7         Maximum number of placements per sequence to include in final output."
    precision: "=10         Output decimal point precision for floating point numbers."
    redo: "Overwrite existing files."
    preserve_rooting: ":{off,on}\\nPreserve the rooting of rooted trees. When disabled, EPA-ng will print the result as an unrooted tree."
    dyn_heur: ":FLOAT in [0 - 1]=0.99999 Excludes: --fix-heur --baseball-heur --no-heur\\nTwo-phase heuristic, determination of candidate edges using accumulative threshold. Enabled by default! See --no-heur for disabling it"
    fix_heur: ":FLOAT in [0 - 1] Excludes: --dyn-heur --baseball-heur --no-heur\\nTwo-phase heuristic, determination of candidate edges by specified percentage of total edges."
    baseball_heur: ": --dyn-heur --fix-heur --no-heur\\nBaseball heuristic as known from pplacer. strike_box=3,max_strikes=6,max_pitches=40."
    no_heur: ": --dyn-heur --fix-heur --baseball-heur\\nDisables heuristic preplacement completely. Overrides all other heuristic flags."
    chunk_size: "=5000      Number of query sequences to be read in at a time. May influence performance."
    ra_xml_blo: "Employ old style of branch length optimization during thorough insertion as opposed to sliding approach. WARNING: may significantly slow down computation."
    no_pre_mask: "Do NOT pre-mask sequences. Enables repeats unless --no-repeats is also specified."
    rate_scalers: ":{off,on,auto}\\nUse individual rate scalers. Important to avoid numerical underflow in taxa rich trees."
    threads: "=0         Number of threads to use. If 0 is passed as argument,program will run with the maximum number of threads available."
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}