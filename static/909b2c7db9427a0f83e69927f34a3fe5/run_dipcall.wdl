version 1.0

task Rundipcall {
  input {
    Int? number_of_threads
    File? unimapminimap_index_reffa
    File? par_chrx_assuming
    Int? zdrop
    Boolean? use_minimap_mapping
    File? repetitive_kmer_list
    Boolean? more_options
    Boolean? options
    String prefix
    String ref_dot_fa
    String pat_dot_fa
    String mat_dot_fa
  }
  command <<<
    run_dipcall \
      ~{prefix} \
      ~{ref_dot_fa} \
      ~{pat_dot_fa} \
      ~{mat_dot_fa} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(unimapminimap_index_reffa) then ("-d " +  '"' + unimapminimap_index_reffa + '"') else ""} \
      ~{if defined(par_chrx_assuming) then ("-x " +  '"' + par_chrx_assuming + '"') else ""} \
      ~{if defined(zdrop) then ("-z " +  '"' + zdrop + '"') else ""} \
      ~{if (use_minimap_mapping) then "-m" else ""} \
      ~{if defined(repetitive_kmer_list) then ("-W " +  '"' + repetitive_kmer_list + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dipcall:0.3--0"
  }
  parameter_meta {
    number_of_threads: "number of threads [8]"
    unimapminimap_index_reffa: "unimap/minimap2 index for ref.fa []"
    par_chrx_assuming: "PAR on chrX; assuming male"
    zdrop: "Z-drop [mapper default]"
    use_minimap_mapping: "use minimap2 for mapping (unimap by default)"
    repetitive_kmer_list: "repetitive k-mer list; use winnowmap for mapping"
    more_options: ""
    options: ""
    prefix: ""
    ref_dot_fa: ""
    pat_dot_fa: ""
    mat_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}