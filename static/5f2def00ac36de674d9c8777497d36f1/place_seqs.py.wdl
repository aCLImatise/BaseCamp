version 1.0

task PlaceSeqspy {
  input {
    File? study_fast_a
    String? sepp__tool
    File? ref_dir
    File? out_tree
    Int? processes
    Directory? intermediate
    Int? min_align
    Int? chunk_size
    Boolean? verbose
  }
  command <<<
    place_seqs_py \
      ~{if defined(study_fast_a) then ("--study_fasta " +  '"' + study_fast_a + '"') else ""} \
      ~{if defined(sepp__tool) then ("-t " +  '"' + sepp__tool + '"') else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(out_tree) then ("--out_tree " +  '"' + out_tree + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(intermediate) then ("--intermediate " +  '"' + intermediate + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  parameter_meta {
    study_fast_a: "FASTA of unaligned study sequences."
    sepp__tool: "|sepp, --placement_tool epa-ng|sepp\\nPlacement tool to use when placing sequences into\\nreference tree. One of \\\"epa-ng\\\" or \\\"sepp\\\" must be\\ninput (default: epa-ng)"
    ref_dir: "Directory containing reference sequence files\\n(default: /usr/local/lib/python3.6/site-\\npackages/picrust2/default_files/prokaryotic/pro_ref).\\nPlease see the online documentation for how to name\\nthe files in this directory in order to use custom\\nreference files."
    out_tree: "Name of final output tree."
    processes: "Number of processes to run in parallel (default: 1).\\nNote that this refers to multithreading rather than\\nmultiprocessing when running EPA-ng and GAPPA."
    intermediate: "Output folder for intermediate files (will be deleted\\notherwise)."
    min_align: "Proportion of the total length of an input query\\nsequence that must align with reference sequences. Any\\nsequences with lengths below this value after making\\nan alignment with reference sequences will be excluded\\nfrom the placement and all subsequent steps. (default:\\n0.80)."
    chunk_size: "Number of query seqs to read in at once for EPA-ng\\n(default: 5000)."
    verbose: "If specified, print out wrapped commands and other\\ndetails to screen."
  }
  output {
    File out_stdout = stdout()
    Directory out_intermediate = "${in_intermediate}"
  }
}