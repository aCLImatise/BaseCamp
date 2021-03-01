version 1.0

task IntegronFinder {
  input {
    Boolean? local_max
    Boolean? func_an_not
    Int? cpu
    Int? distance_thresh
    Directory? outdir
    Boolean? union_integrase_s
    File? cm_search
    File? hmm_search
    File? prodigal
    File? path_func_an_not
    Boolean? gem_base
    File? an_not_parser
    File? attc_model
    Int? evalue_attc
    Int? cal_in_threshold
    Boolean? keep_palindromes
    Boolean? no_proteins
    Boolean? promoter_atti
    Int? max_attc_size
    Int? min_attc_size
    Boolean? eagle_eyes
    Boolean? circ
    Boolean? linear
    File? topology_file
    Boolean? mute
    Boolean? pdf
    Boolean? gbk
    Boolean? keep_tmp
    Boolean? split_results
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    integron_finder \
      ~{if (local_max) then "--local-max" else ""} \
      ~{if (func_an_not) then "--func-annot" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(distance_thresh) then ("--distance-thresh " +  '"' + distance_thresh + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (union_integrase_s) then "--union-integrases" else ""} \
      ~{if defined(cm_search) then ("--cmsearch " +  '"' + cm_search + '"') else ""} \
      ~{if defined(hmm_search) then ("--hmmsearch " +  '"' + hmm_search + '"') else ""} \
      ~{if defined(prodigal) then ("--prodigal " +  '"' + prodigal + '"') else ""} \
      ~{if defined(path_func_an_not) then ("--path-func-annot " +  '"' + path_func_an_not + '"') else ""} \
      ~{if (gem_base) then "--gembase" else ""} \
      ~{if defined(an_not_parser) then ("--annot-parser " +  '"' + an_not_parser + '"') else ""} \
      ~{if defined(attc_model) then ("--attc-model " +  '"' + attc_model + '"') else ""} \
      ~{if defined(evalue_attc) then ("--evalue-attc " +  '"' + evalue_attc + '"') else ""} \
      ~{if defined(cal_in_threshold) then ("--calin-threshold " +  '"' + cal_in_threshold + '"') else ""} \
      ~{if (keep_palindromes) then "--keep-palindromes" else ""} \
      ~{if (no_proteins) then "--no-proteins" else ""} \
      ~{if (promoter_atti) then "--promoter-attI" else ""} \
      ~{if defined(max_attc_size) then ("--max-attc-size " +  '"' + max_attc_size + '"') else ""} \
      ~{if defined(min_attc_size) then ("--min-attc-size " +  '"' + min_attc_size + '"') else ""} \
      ~{if (eagle_eyes) then "--eagle-eyes" else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(topology_file) then ("--topology-file " +  '"' + topology_file + '"') else ""} \
      ~{if (mute) then "--mute" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if (gbk) then "--gbk" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (split_results) then "--split-results" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/integron_finder:2.0rc6--py_0"
  }
  parameter_meta {
    local_max: "Allows thorough local detection (slower but more\\nsensitive and do not increase false positive rate)."
    func_an_not: "Functional annotation of CDS associated with integrons\\nHMM files are needed in Func_annot folder."
    cpu: "Number of CPUs used by INFERNAL and HMMER"
    distance_thresh: "Two elements are aggregated if they are distant of\\nDISTANCE_THRESH [4000]bp or less"
    outdir: "Set the output directory (default: current)"
    union_integrase_s: "Instead of taking intersection of hits from Phage_int\\nprofile (Tyr recombinases) and integron_integrase\\nprofile, use the union of the hits"
    cm_search: "Complete path to cmsearch if not in PATH. eg:\\n/usr/local/bin/cmsearch"
    hmm_search: "Complete path to hmmsearch if not in PATH. eg:\\n/usr/local/bin/hmmsearch"
    prodigal: "Complete path to prodigal if not in PATH. eg:\\n/usr/local/bin/prodigal"
    path_func_an_not: "Path to file containing all hmm bank paths (one per\\nline)"
    gem_base: "Use gembase formatted protein file instead of\\nProdigal. Folder structure must be preserved"
    an_not_parser: "the name of the parser to use to get information from\\nprotein file."
    attc_model: "Path or file to the attc model (Covariance Matrix)."
    evalue_attc: "Set evalue threshold to filter out hits above it\\n(default: 1)"
    cal_in_threshold: "keep 'CALIN' only if attC sites nuber >= calin-\\nthreshold (default: 2)"
    keep_palindromes: "For a given hit, if the palindromic version is found,\\ndon't remove the one with highest evalue."
    no_proteins: "Don't annotate CDS and don't find integrase, just look\\nfor attC sites."
    promoter_atti: "Search also for promoter and attI sites. (default\\nFalse)"
    max_attc_size: "Set maximum value fot the attC size (default: 200bp)"
    min_attc_size: "set minimum value fot the attC size (default: 40bp)"
    eagle_eyes: "Synonym of --local-max. Like a soaring eagle in the\\nsky, catching rabbits (or attC sites) by surprise."
    circ: "Set the default topology for replicons to 'circular'"
    linear: "Set the default topology for replicons to 'linear'"
    topology_file: "The path to a file where the topology for each\\nreplicon is specified."
    mute: "mute the log on stdout.(continue to log on\\nintegron_finder.out)"
    pdf: "For each complete integron, a simple graphic of the\\nregion is depicted (in pdf format)"
    gbk: "generate a GenBank file with the sequence annotated\\nwith the same annotations than .integrons file."
    keep_tmp: "keep intermediate results. This results are stored in\\ndirectory named tmp_<replicon id>"
    split_results: "Instead of merging integron results from all replicon\\nin one file, keep them in separated files."
    verbose: "Increase verbosity of output (can be cumulative : -vv)"
    quiet: "Decrease verbosity of output (can be cumulative : -qq)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}