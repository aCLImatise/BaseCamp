version 1.0

task SlimFastg.py {
  input {
    String? followed_commas_corresponds
    String? mitochondrion_mitochondrion_be
    String? no_hits
    String? significant
    Boolean? remove_low_dup
    String? depth_cut_off
    Int? min_depth
    Int? max_depth
    Boolean? merge
    String? include
    String? include_priority
    String? exclude
    String? exclude_priority
    Boolean? no_hits_labeled_tab
    Boolean? keep_temp
    String? out_dir
    String? prefix
    String? out_base
    Boolean? log
    Boolean? verbose
    Boolean? continue
    Boolean? no_overwrite
    String? which_blast
    String? threads
    String your_fast_g_files
  }
  command <<<
    slim_fastg.py \
      ~{your_fast_g_files} \
      ~{if defined(followed_commas_corresponds) then ("-F " +  '"' + followed_commas_corresponds + '"') else ""} \
      ~{if defined(mitochondrion_mitochondrion_be) then ("-E " +  '"' + mitochondrion_mitochondrion_be + '"') else ""} \
      ~{if defined(no_hits) then ("--no-hits " +  '"' + no_hits + '"') else ""} \
      ~{if defined(significant) then ("--significant " +  '"' + significant + '"') else ""} \
      ~{true="--remove-low-dup" false="" remove_low_dup} \
      ~{if defined(depth_cut_off) then ("--depth-cutoff " +  '"' + depth_cut_off + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{true="--merge" false="" merge} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(include_priority) then ("--include-priority " +  '"' + include_priority + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_priority) then ("--exclude-priority " +  '"' + exclude_priority + '"') else ""} \
      ~{true="--no-hits-labeled-tab" false="" no_hits_labeled_tab} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(out_base) then ("--out-base " +  '"' + out_base + '"') else ""} \
      ~{true="--log" false="" log} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--continue" false="" continue} \
      ~{true="--no-overwrite" false="" no_overwrite} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    followed_commas_corresponds: "followed with mode embplant_pt, other_pt, embplant_mt, embplant_nr, animal_mt, fungus_mt (which means embryophyta plastome, non-embryophyta plastome, plant mitochondrion, plant nrDNA, animal mitochondrion, fungus mitochondrion separately), or a combination of above split by comma(s) (corresponds to certain arguments as following listed). ------------------------------------------------------ embplant_pt      \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_pt.fasta\" ------------------------------------------------------ other_pt         \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site- packages/GetOrganelleLib/LabelDatabase/other_pt.fasta\" ------------------------------------------------------ embplant_mt      \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_mt.fasta\" ------------------------------------------------------ embplant_nr      \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_nr.fasta\" ------------------------------------------------------ animal_mt        \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/animal_mt.fasta\" ------------------------------------------------------ fungus_mt        \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/fungus_mt.fasta\" ------------------------------------------------------ other_pt,embplant_mt,fungus_mt   \" --include-priority /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/other_pt.fasta,/tmp/tmpkfo1qzio/l ib/python3.8/site-packages/GetOrganelleLib/LabelDataba se/embplant_mt.fasta,/tmp/tmpkfo1qzio/lib/python3.8/si te-packages/GetOrganelleLib/LabelDatabase/fungus_mt.fa sta\" ------------------------------------------------------ For easy usage and compatibility of old versions, following redirection would be automatically fulfilled without warning:        plant_cp->embplant_pt; plant_pt->embplant_pt;  plant_mt->embplant_mt; plant_nr->embplant_nr"
    mitochondrion_mitochondrion_be: "followed with mode embplant_pt, other_pt, embplant_mt, embplant_nr, animal_mt, fungus_mt (which means embryophyta plastome, non-embryophyta plastome, plant mitochondrion, plant nrDNA, animal mitochondrion, fungus mitochondrion separately), or a combination of above split by comma(s) (be similar to -F and corresponds to certain arguments as following listed). ------------------------------------------------------ embplant_pt      \" --exclude /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_pt.fasta\" ------------------------------------------------------ embplant_mt      \" --exclude /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_mt.fasta\" ------------------------------------------------------ embplant_nr      \" --exclude /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_nr.fasta\" ------------------------------------------------------ animal_mt        \" --exclude /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/animal_mt.fasta\" ------------------------------------------------------ fungus_mt        \" --exclude /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/fungus_mt.fasta\" ------------------------------------------------------ embplant_mt,embplant_nr          \" --exclude /tmp/tmpkfo1qzio/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_mt.fasta,/tmp/tmpkfo1qzi o/lib/python3.8/site-packages/GetOrganelleLib/LabelDat abase/embplant_nr.fasta\" ------------------------------------------------------ For easy usage and compatibility of old versions, following redirection would be automatically fulfilled without warning:         plant_cp->embplant_pt; plant_pt->embplant_pt;  plant_mt->embplant_mt; plant_nr->embplant_nr"
    no_hits: "Provide treatment for non-hitting contigs. ------------------------------------------------------ ex_no_con        keep those connect with hitting- include contigs. (Default) ------------------------------------------------------ ex_no_hit        exclude all. ------------------------------------------------------ keep_all         keep all ------------------------------------------------------"
    significant: "Within a contig, if the query-score of hitting A is more than given times (Default: 3.0) of the query- score of hitting B, this contig would be treated as only A related, rather than both."
    remove_low_dup: "Remove redundant low-coverage contigs that largely overlap some high-coverage contigs."
    depth_cut_off: "After detection for target coverage, those beyond certain times (depth cutoff) of the detected coverage would be excluded. Default: 10000.0"
    min_depth: "Input a float or integer number. Filter fastg file by a minimum depth. Default: 0.0."
    max_depth: "Input a float or integer number. filter fastg file by a maximum depth. Default: inf."
    merge: "Merge all possible contigs."
    include: "followed by Blastn database(s)"
    include_priority: "followed by Blastn database(s)."
    exclude: "followed by Blastn database(s)."
    exclude_priority: "followed by Blastn database(s)"
    no_hits_labeled_tab: "Choose to disable producing tab file"
    keep_temp: "Choose to disable deleting temp files produced by blast and this script"
    out_dir: "By default the output would be along with the input fastg file. But you could assign a new directory with this option."
    prefix: "Add prefix to the output basename. Conflict with \"-- out-base\"."
    out_base: "By default the output basename would be modified based on the input fastg file. But you could assign a new basename with this option. Conflict with \"--prefix\"."
    log: "Generate log file."
    verbose: "For debug usage."
    continue: "Specified for calling from get_organelle_from_reads.py"
    no_overwrite: "Overwrite existing output result."
    which_blast: "Assign the path to BLAST binary files if not added to the path. Default: try GetOrganelleDep/linux/ncbi- blast first, then $PATH"
    threads: "Threads for blastn."
    your_fast_g_files: ""
  }
}