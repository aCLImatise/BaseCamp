version 1.0

task IRep {
  input {
    Boolean? _fastas
    Boolean? sorted_sam_files
    String? prefix_output_files
    Boolean? pickle
    Int? mm
    Boolean? sort
    Int? max_memory_gb
    Boolean? no_plot
    Boolean? no_gc_correction
    Int? threads_default
    String i_rep
  }
  command <<<
    iRep \
      ~{i_rep} \
      ~{if (_fastas) then "-f" else ""} \
      ~{if (sorted_sam_files) then "-s" else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if (pickle) then "--pickle" else ""} \
      ~{if defined(mm) then ("-mm " +  '"' + mm + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if defined(max_memory_gb) then ("-M " +  '"' + max_memory_gb + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if (no_gc_correction) then "--no-gc-correction" else ""} \
      ~{if defined(threads_default) then ("-t " +  '"' + threads_default + '"') else ""}
  >>>
  parameter_meta {
    _fastas: "[F [F ...]]      fasta(s)"
    sorted_sam_files: "[S [S ...]]      sorted sam file(s) for each sample (e.g.: bowtie2"
    prefix_output_files: "prefix for output files (table and plots)"
    pickle: "save pickle file (optional)"
    mm: "max. # of read mismatches allowed (default: 1)"
    sort: "optional - sort the sam file"
    max_memory_gb: "max. memory (GB) for sorting sam (default: 100)"
    no_plot: "do not plot output"
    no_gc_correction: "do not correct coverage for GC bias before calculating"
    threads_default: "threads (default: 6)"
    i_rep: "-ff                 overwrite files"
  }
  output {
    File out_stdout = stdout()
  }
}