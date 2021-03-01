version 1.0

task BPTR {
  input {
    Boolean? _fastas
    Boolean? sorted_sam_files
    String? method_detecting_oriter
    File? filename_output_table
    File? pickle
    File? plot
    Int? mm
    Int? number_perform_default
    Boolean? sort
    Int? max_memory_gb
    Boolean? ff
    Int? threads_default
    String? c
    String coverage
  }
  command <<<
    bPTR \
      ~{coverage} \
      ~{if (_fastas) then "-f" else ""} \
      ~{if (sorted_sam_files) then "-s" else ""} \
      ~{if defined(method_detecting_oriter) then ("-m " +  '"' + method_detecting_oriter + '"') else ""} \
      ~{if defined(filename_output_table) then ("-o " +  '"' + filename_output_table + '"') else ""} \
      ~{if defined(pickle) then ("-pickle " +  '"' + pickle + '"') else ""} \
      ~{if defined(plot) then ("-plot " +  '"' + plot + '"') else ""} \
      ~{if defined(mm) then ("-mm " +  '"' + mm + '"') else ""} \
      ~{if defined(number_perform_default) then ("-p " +  '"' + number_perform_default + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if defined(max_memory_gb) then ("-b " +  '"' + max_memory_gb + '"') else ""} \
      ~{if (ff) then "-ff" else ""} \
      ~{if defined(threads_default) then ("-t " +  '"' + threads_default + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _fastas: "[F [F ...]]  fasta(s)"
    sorted_sam_files: "[S [S ...]]  sorted sam file(s) for each sample (e.g.: bowtie2 --reorder)"
    method_detecting_oriter: "method for detecting Ori/Ter of replication: gc_skew or"
    filename_output_table: "filename for output table"
    pickle: "filename for output pickle file (optional)"
    plot: "filename for coverage profile plots (default: no plots)"
    mm: "maximum number of mapping mismatches allowed (default: no\\nlimit)"
    number_perform_default: "number of permutations to perform (default: None)"
    sort: "sort the sam file"
    max_memory_gb: "max memory (GB) for sorting sam (default: 100)"
    ff: "overwrite files"
    threads_default: "threads (default: 6)"
    c: ""
    coverage: "-c C            pre-computed data from growth_ptr.py (optional: pickle file)"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_table = "${in_filename_output_table}"
    File out_pickle = "${in_pickle}"
  }
}