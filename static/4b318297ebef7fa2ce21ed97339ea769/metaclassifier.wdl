version 1.0

task Metaclassifier {
  input {
    File? output_dir
    String? frag_type
    Boolean? merge
    String? tax_class
    Int? min_proportion
    Int? max_markers
    File? pear_merger
    File? seq_tk_converter
    File? v_search_aligner
    Int? threads
    String sample_file
    String db_dir
    String config_file
  }
  command <<<
    metaclassifier \
      ~{sample_file} \
      ~{db_dir} \
      ~{config_file} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(frag_type) then ("--frag_type " +  '"' + frag_type + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(tax_class) then ("--tax_class " +  '"' + tax_class + '"') else ""} \
      ~{if defined(min_proportion) then ("--min_proportion " +  '"' + min_proportion + '"') else ""} \
      ~{if defined(max_markers) then ("--max_markers " +  '"' + max_markers + '"') else ""} \
      ~{if defined(pear_merger) then ("--pear_merger " +  '"' + pear_merger + '"') else ""} \
      ~{if defined(seq_tk_converter) then ("--seqtk_converter " +  '"' + seq_tk_converter + '"') else ""} \
      ~{if defined(v_search_aligner) then ("--vsearch_aligner " +  '"' + v_search_aligner + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaclassifier:v1.0.1--py_0"
  }
  parameter_meta {
    output_dir: "Specify output directory name, otherwise it will automatically be created using the\\ninput sample table file name"
    frag_type: "Specify the sequence fragment type in the input sample file, available options are:\\npaired: single-end read fragments (default)\\nsingle: paired-end read fragments"
    merge: "Merge overlapping paired-end reads (default: False)"
    tax_class: "Taxonomy class for quantify taxon level marker read abundance (default: genus)"
    min_proportion: "Minimum taxon read proportion allowed to retain a sample taxon, allowed proportion,\\nranges from 0.00 to 0.01 (default = 0.00)"
    max_markers: "Maximum missing markers allowed to retain a sample taxon (default = 0)"
    pear_merger: "Path to PEAR, the paired-end read merger if not in environmental variables (ENV)\\n(default: read from ENV)"
    seq_tk_converter: "Path to seqtk, the sequence processing tool if not in environmental variables (ENV)\\n(default: read from ENV)"
    v_search_aligner: "Path to VSEARCH, the sequence analysis tool if not in environmental variables (ENV)\\n(default: read from ENV)"
    threads: "Specify the number of threads to use (default: 2)"
    sample_file: "Input tab-delimited file specifying sample names, file names for forward paired-end\\nreads, and file names for reverse paired-end (file path if not in working directory)\\nThe second file not required for single-end frangments"
    db_dir: "Input marker database directory with sequence fasta and corresponding taxonomy lineage\\nfiles for each marker"
    config_file: "Input tab-delimited file specifying marker name, and its corresponding VSEARCH's\\nusearch_global function minimum query coverage (i.e. 0.8 for 80%) and minimun sequence\\nidentity (i.e. 0.95 for 95%) for each search marker (provide the file path if not in\\nif the VSEARCH settings configuration is not in working directory)"
  }
  output {
    File out_stdout = stdout()
  }
}