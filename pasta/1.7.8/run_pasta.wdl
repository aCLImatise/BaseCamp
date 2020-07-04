version 1.0

task RunPasta.py {
  input {
    Boolean? aligned
    Boolean? auto
    String? datatype
    String? export_config
    String? input_sequence_file
    String? job
    Boolean? keep_alignment_temps
    Boolean? keep_temp
    String? missing
    Boolean? multilocus
    Boolean? ra_xml_search_after
    String? temporaries
    String? times_file
    String? tree_file
    Boolean? two_phase
    Boolean? untrusted
    Boolean? no_blind_mode_is_final
    Boolean? move_to_blind_on_worse_score
    String? output_directory
    Boolean? no_return_final_tree_and_alignment
    Boolean? max_mem_mb
    Boolean? num_cpus
    Boolean? mask_gap_py_sites
    Boolean? start_tree_search_from_current
    String? aligner
    String? merger
    String? tree_estimator
    String pasta
    String performs
    String iterative
    String realignment
    String and
    String tree
    String inference
  }
  command <<<
    run_pasta.py \
      ~{pasta} \
      ~{performs} \
      ~{iterative} \
      ~{realignment} \
      ~{and} \
      ~{tree} \
      ~{inference} \
      ~{true="--aligned" false="" aligned} \
      ~{true="--auto" false="" auto} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(export_config) then ("--exportconfig " +  '"' + export_config + '"') else ""} \
      ~{if defined(input_sequence_file) then ("--input " +  '"' + input_sequence_file + '"') else ""} \
      ~{if defined(job) then ("--job " +  '"' + job + '"') else ""} \
      ~{true="--keepalignmenttemps" false="" keep_alignment_temps} \
      ~{true="--keeptemp" false="" keep_temp} \
      ~{if defined(missing) then ("--missing " +  '"' + missing + '"') else ""} \
      ~{true="--multilocus" false="" multilocus} \
      ~{true="--raxml-search-after" false="" ra_xml_search_after} \
      ~{if defined(temporaries) then ("--temporaries " +  '"' + temporaries + '"') else ""} \
      ~{if defined(times_file) then ("--timesfile " +  '"' + times_file + '"') else ""} \
      ~{if defined(tree_file) then ("--treefile " +  '"' + tree_file + '"') else ""} \
      ~{true="--two-phase" false="" two_phase} \
      ~{true="--untrusted" false="" untrusted} \
      ~{true="--no-blind-mode-is-final" false="" no_blind_mode_is_final} \
      ~{true="--move-to-blind-on-worse-score" false="" move_to_blind_on_worse_score} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--no-return-final-tree-and-alignment" false="" no_return_final_tree_and_alignment} \
      ~{true="--max-mem-mb" false="" max_mem_mb} \
      ~{true="--num-cpus" false="" num_cpus} \
      ~{true="--mask-gappy-sites" false="" mask_gap_py_sites} \
      ~{true="--start-tree-search-from-current" false="" start_tree_search_from_current} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(merger) then ("--merger " +  '"' + merger + '"') else ""} \
      ~{if defined(tree_estimator) then ("--tree-estimator " +  '"' + tree_estimator + '"') else ""}
  >>>
  parameter_meta {
    aligned: "If used, then the input file be will treated as aligned for the purposes of the first round of tree inference (the algorithm will start with tree searching on the input before re-aligning). This option only applies if a starting tree is NOT given."
    auto: "This option is mostly for backward compatibility. If used, then automatically identified default values for the max_subproblem_size, number of cpus, tools, breaking strategy, masking criteria, and stopping criteria will be used. This is just like using the default options. However, [WARNING] when auto option is used PASTA overrides the value of these options even if you have supplied them; we recommend that you run this option with --exportconfig to see the exact set of options that will be used in your analysis."
    datatype: "Specify DNA, RNA, or Protein to indicate what type of data is specified. Note that this option is NOT automatically determined [default: dna]"
    export_config: "Export the configuration to the specified file and exit. This is useful if you want to combine several configurations and command line settings into a single configuration file to be used in other analyses."
    input_sequence_file: "input sequence file"
    job: "job name [pastajob]"
    keep_alignment_temps: "Keep even the realignment temporary running files (this only has an effect if keeptemp is also selected)."
    keep_temp: "Keep temporary running files? [default: disabled]"
    missing: "How to deal with missing data symbols. Specify either \"Ambiguous\" or \"Absent\" if the input data contains ?-symbols"
    multilocus: "Analyze multi-locus data? NOT SUPPORTED IN CURRENT PASTA version."
    ra_xml_search_after: "If used, the completion of the PASTA algorithm will be followed by a tree search using RAxML on the masked alignment. This can be useful if a very fast and approximate tree estimator is used during the PASTA algorithm. [default: disabled]"
    temporaries: "directory that will be the parent for this job's temporary file [default in PASTA home]"
    times_file: "optional file that will store the times of events during the PASTA run. If the file exists, new lines will be"
    tree_file: "starting tree file"
    two_phase: "If used, then the program will not perform the PASTA algorithm. Instead it will simply call the sequence aligner to align the entire dataset then will call the tree estimator to obtain the tree."
    untrusted: "If used, then the data in the input file will be parsed using a more careful procedure. This will generate more helpful error messages, but will use more memory and be much slower for large inputs. If this option is omitted, the error messages resulting from invalid input data will be more cryptic."
    no_blind_mode_is_final: "When the blind mode is final, then PASTA will never leave blind mode once it is has entered blind mode."
    move_to_blind_on_worse_score: "If True then PASTA will move to the blind mode as soon it encounters a tree/alignment pair with a worse score. This is essentially the same as running in blind mode from the beginning, but it does allow one to terminate a run at an interval from the first time the algorithm fails to improve the score."
    output_directory: "directory for output files (defaults to input file directory)"
    no_return_final_tree_and_alignment: "Return the best likelihood tree and alignment pair instead of those from the last iteration; this is discouraged with masking option enabled."
    max_mem_mb: "=#      The maximum memory available to OPAL (for the Java heap size when running Java tools)."
    num_cpus: "=#        The number of processing cores that you would like to assign to PASTA.  This number should not exceed the number of cores on your machine. [default: number of cores available on the machine]"
    mask_gap_py_sites: "=# The minimum number of non-gap characters required in each column passed to the tree estimation step. Columns with fewer non-gap characters than the given threshold will be masked out before passing the alignment into the tree estimation module. These columns will be present in the final alignment. [default: 0.1% of alignment size]"
    start_tree_search_from_current: "If selected that the tree from the previous iteration will be given to the tree searching tool as a starting tree."
    aligner: "The name of the alignment program to use for subproblems. [default: mafft]"
    merger: "The name of the alignment program to use to merge subproblems. [default: OPAL]"
    tree_estimator: "The name of the tree inference program to use to find trees on fixed alignments. [default: fasttree]"
    pasta: ""
    performs: ""
    iterative: ""
    realignment: ""
    and: ""
    tree: ""
    inference: ""
  }
}