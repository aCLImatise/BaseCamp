version 1.0

task SlimGraphpy {
  input {
    Float? followed_commas_corresponds
    Float? mitochondrionfungus_mitochondrion_be
    String? no_hits
    Int? max_slim_extending_len
    Float? significant
    Float? depth_cut_off
    Int? min_depth
    Int? max_depth
    Boolean? merge
    String? include
    String? include_priority
    String? exclude
    String? exclude_priority
    Boolean? no_hits_labeled_tab
    Boolean? keep_temp
    File? out_dir
    String? prefix
    File? out_base
    Boolean? log
    Boolean? wrapper
    Boolean? verbose
    Boolean? continue
    Boolean? no_overwrite
    File? which_blast
    String? threads
    String your_fast_g_files
  }
  command <<<
    slim_graph_py \
      ~{your_fast_g_files} \
      ~{if defined(followed_commas_corresponds) then ("-F " +  '"' + followed_commas_corresponds + '"') else ""} \
      ~{if defined(mitochondrionfungus_mitochondrion_be) then ("-E " +  '"' + mitochondrionfungus_mitochondrion_be + '"') else ""} \
      ~{if defined(no_hits) then ("--no-hits " +  '"' + no_hits + '"') else ""} \
      ~{if defined(max_slim_extending_len) then ("--max-slim-extending-len " +  '"' + max_slim_extending_len + '"') else ""} \
      ~{if defined(significant) then ("--significant " +  '"' + significant + '"') else ""} \
      ~{if defined(depth_cut_off) then ("--depth-cutoff " +  '"' + depth_cut_off + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(include_priority) then ("--include-priority " +  '"' + include_priority + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_priority) then ("--exclude-priority " +  '"' + exclude_priority + '"') else ""} \
      ~{if (no_hits_labeled_tab) then "--no-hits-labeled-tab" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(out_base) then ("--out-base " +  '"' + out_base + '"') else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (wrapper) then "--wrapper" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (no_overwrite) then "--no-overwrite" else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    followed_commas_corresponds: "followed with mode embplant_pt, other_pt, embplant_mt,\\nembplant_nr, animal_mt, fungus_mt (which means\\nembryophyta plastome, non-embryophyta plastome, plant\\nmitochondrion, plant nrDNA, animal mitochondrion,\\nfungus mitochondrion separately), or a combination of\\nabove split by comma(s) (corresponds to certain\\narguments as following listed).\\n------------------------------------------------------\\nembplant_pt      \\\" --include-priority\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_pt.fasta\\\"\\n------------------------------------------------------\\nother_pt         \\\" --include-priority\\n/usr/local/lib/python3.8/site-\\npackages/GetOrganelleLib/LabelDatabase/other_pt.fasta\\\"\\n------------------------------------------------------\\nembplant_mt      \\\" --include-priority\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_mt.fasta\\\"\\n------------------------------------------------------\\nembplant_nr      \\\" --include-priority\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_nr.fasta\\\"\\n------------------------------------------------------\\nanimal_mt        \\\" --include-priority\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/animal_mt.fasta\\\"\\n------------------------------------------------------\\nfungus_mt        \\\" --include-priority\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/fungus_mt.fasta\\\"\\n------------------------------------------------------\\nother_pt,embplant_mt,fungus_mt   \\\" --include-priority\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/other_pt.fasta,/usr/local/lib/python3.8\\n/site-packages/GetOrganelleLib/LabelDatabase/embplant_\\nmt.fasta,/usr/local/lib/python3.8/site-packages/GetOrg\\nanelleLib/LabelDatabase/fungus_mt.fasta\\\"\\n------------------------------------------------------\\nFor easy usage and compatibility of old versions,\\nfollowing redirection would be automatically fulfilled\\nwithout warning:  plant_cp->embplant_pt;\\nplant_pt->embplant_pt;  plant_mt->embplant_mt;\\nplant_nr->embplant_nr"
    mitochondrionfungus_mitochondrion_be: "followed with mode embplant_pt, other_pt, embplant_mt,\\nembplant_nr, animal_mt, fungus_mt (which means\\nembryophyta plastome, non-embryophyta plastome, plant\\nmitochondrion, plant nrDNA, animal mitochondrion,\\nfungus mitochondrion separately), or a combination of\\nabove split by comma(s) (be similar to -F and\\ncorresponds to certain arguments as following listed).\\n------------------------------------------------------\\nembplant_pt      \\\" --exclude\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_pt.fasta\\\"\\n------------------------------------------------------\\nembplant_mt      \\\" --exclude\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_mt.fasta\\\"\\n------------------------------------------------------\\nembplant_nr      \\\" --exclude\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_nr.fasta\\\"\\n------------------------------------------------------\\nanimal_mt        \\\" --exclude\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/animal_mt.fasta\\\"\\n------------------------------------------------------\\nfungus_mt        \\\" --exclude\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/fungus_mt.fasta\\\"\\n------------------------------------------------------\\nembplant_mt,embplant_nr          \\\" --exclude\\n/usr/local/lib/python3.8/site-packages/GetOrganelleLib\\n/LabelDatabase/embplant_mt.fasta,/usr/local/lib/python\\n3.8/site-packages/GetOrganelleLib/LabelDatabase/embpla\\nnt_nr.fasta\\\"\\n------------------------------------------------------\\nFor easy usage and compatibility of old versions,\\nfollowing redirection would be automatically fulfilled\\nwithout warning:     plant_cp->embplant_pt;\\nplant_pt->embplant_pt;  plant_mt->embplant_mt;\\nplant_nr->embplant_nr"
    no_hits: "Provide treatment for non-hitting contigs.\\n------------------------------------------------------\\nex_no_con        keep those connect with hitting-\\ninclude contigs. (Default)\\n------------------------------------------------------\\nex_no_hit        exclude all.\\n------------------------------------------------------\\nkeep_all         keep all\\n------------------------------------------------------"
    max_slim_extending_len: "This is used to limit the extending length, below\\nwhich a \\\"non-hit contig\\\" is allowed to be distant from\\na \\\"hit contig\\\" to be kept. This distance is measured\\nby the shortest distance connecting those two contigs,\\nweighted by the depth of the \\\"hit contig\\\". This is\\nused only when \\\"--no-hits ex_no_con\\\" was chosen.\\nShould be a single INTEGER number or inf (meaning\\ninfinite). It is supposed to be half of the maximum\\nexpected genome size to be safe, but could be much\\nsmaller if the LabelDatabse is closely related.\\nDefault: 15000 (-F embplant_pt), 50000 (-F\\nembplant_mt/fungus_mt/other_pt), 12500 (-F\\nembplant_nr/animal_mt), maximum_of_type1_type2 (-F\\ntype1,type2), inf (cases without using -F)"
    significant: "Within a contig, if the query-score of hitting A is\\nmore than given times (Default: 3.0) of the query-\\nscore of hitting B, this contig would be treated as\\nonly A related, rather than both."
    depth_cut_off: "After detection for target coverage, those beyond\\ncertain times (depth cutoff) of the detected coverage\\nwould be excluded. Default: 10000.0"
    min_depth: "Input a float or integer number. Filter fastg file by\\na minimum depth. Default: 0.0."
    max_depth: "Input a float or integer number. filter fastg file by\\na maximum depth. Default: inf."
    merge: "Merge all possible contigs."
    include: "followed by Blastn database(s)"
    include_priority: "followed by Blastn database(s)."
    exclude: "followed by Blastn database(s)."
    exclude_priority: "followed by Blastn database(s)"
    no_hits_labeled_tab: "Choose to disable producing tab file"
    keep_temp: "Choose to disable deleting temp files produced by\\nblast and this script"
    out_dir: "By default the output would be along with the input\\nfastg file. But you could assign a new directory with\\nthis option."
    prefix: "Add prefix to the output basename. Conflict with \\\"--\\nout-base\\\"."
    out_base: "By default the output basename would be modified based\\non the input fastg file. But you could assign a new\\nbasename with this option. Conflict with \\\"--prefix\\\".\\nConflict with multiple input files!"
    log: "Generate log file."
    wrapper: "Wrapper mode logging when called by get_organelle*.py.\\nDefault: False"
    verbose: "For debug usage."
    continue: "Specified for calling from get_organelle_from_reads.py"
    no_overwrite: "Overwrite existing output result."
    which_blast: "Assign the path to BLAST binary files if not added to\\nthe path. Default: try \\\"/GetOrganelleDep/linux/ncbi-\\nblast\\\" first, then $PATH"
    threads: "Threads for blastn.\\n"
    your_fast_g_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}