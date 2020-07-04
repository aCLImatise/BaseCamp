version 1.0

task PlaceSeqs.py {
  input {
    File? study_fast_a
    File? ref_dir
    File? out_tree
    String? processes
    File? intermediate
    Int? min_align
    String? chunk_size
    Boolean? verbose
  }
  command <<<
    place_seqs.py \
      ~{if defined(study_fast_a) then ("--study_fasta " +  '"' + study_fast_a + '"') else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(out_tree) then ("--out_tree " +  '"' + out_tree + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(intermediate) then ("--intermediate " +  '"' + intermediate + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    study_fast_a: "FASTA of unaligned study sequences."
    ref_dir: "Directory containing reference sequence files (default: /tmp/tmpqdk0dqqj/lib/python3.6/site- packages/picrust2/default_files/prokaryotic/pro_ref). Please see the online documentation for how to name the files in this directory in order to use custom reference files."
    out_tree: "Name of final output tree."
    processes: "Number of processes to run in parallel (default: 1). Note that this refers to multithreading rather than multiprocessing when running EPA-ng and GAPPA."
    intermediate: "Output folder for intermediate files (will be deleted otherwise)."
    min_align: "Proportion of the total length of an input query sequence that must align with reference sequences. Any sequences with lengths below this value after making an alignment with reference sequences will be excluded from the placement and all subsequent steps. (default: 0)."
    chunk_size: "Number of query seqs to read in at once for EPA-ng (default: 5000)."
    verbose: "If specified, print out wrapped commands and other details to screen."
  }
}