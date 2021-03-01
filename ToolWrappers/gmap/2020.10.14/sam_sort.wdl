version 1.0

task SamSort {
  input {
    Directory? dir
    String? db
    File? split_output
    Boolean? append_output
    File? sort_two
    Boolean? mark_dups
    Boolean? mark_first
    Boolean? dups_only
    Boolean? uniq_only
    Boolean? restore_orig_order
    Boolean? multiple_primaries
    Boolean? no_sam_headers
    Int? output_buffer
    String? options_dot_dot_dot
    File sam_file
  }
  command <<<
    sam_sort \
      ~{options_dot_dot_dot} \
      ~{sam_file} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(split_output) then ("--split-output " +  '"' + split_output + '"') else ""} \
      ~{if (append_output) then "--append-output" else ""} \
      ~{if defined(sort_two) then ("--sort2 " +  '"' + sort_two + '"') else ""} \
      ~{if (mark_dups) then "--mark-dups" else ""} \
      ~{if (mark_first) then "--mark-first" else ""} \
      ~{if (dups_only) then "--dups-only" else ""} \
      ~{if (uniq_only) then "--uniq-only" else ""} \
      ~{if (restore_orig_order) then "--restore-orig-order" else ""} \
      ~{if (multiple_primaries) then "--multiple-primaries" else ""} \
      ~{if (no_sam_headers) then "--no-sam-headers" else ""} \
      ~{if defined(output_buffer) then ("--output-buffer " +  '"' + output_buffer + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0"
  }
  parameter_meta {
    dir: "Genome directory"
    db: "Genome database.  If argument is '?' (with\\nthe quotes), this command lists available databases."
    split_output: "Basename for multiple-file output, separately for nomapping,\\nhalfmapping_uniq, halfmapping_mult, unpaired_uniq, unpaired_mult,\\npaired_uniq, paired_mult, concordant_uniq, and concordant_mult results"
    append_output: "When --split-output is given, this flag will append output\\nto the existing files.  Otherwise, the default is to create new files."
    sort_two: "For positions with the same genomic position, sort secondarily by\\nnone: no guarantee about the secondary sort (default)\\norig: original order in the SAM output file (what samtools sort does)\\naccession: alphabetically by accession name\\nmate-fwd: by genomic position of the mate, in ascending order\\nmate-rev: by genomic position of the mate, in descending order\\nFor sorting by mate genomic position, a nomapping mate is treated as genomic position 0"
    mark_dups: "Mark duplicate reads by altering the flag accordingly"
    mark_first: "Also mark the first occurrence of a read that has a subsequent duplicate"
    dups_only: "Print only duplicate reads"
    uniq_only: "Print only unique reads"
    restore_orig_order: "Restore original order of SAM file.  Useful when --mark-dups, --dups-only, or --uniq-only\\nis specified, and sorting is not desired"
    multiple_primaries: "Specify if GSNAP or GMAP was run with the --multiple-primaries flag"
    no_sam_headers: "Do not print SAM header lines"
    output_buffer: "Size of output buffer kept in RAM for printing (default 10000000, or 10 million SAM lines)"
    options_dot_dot_dot: ""
    sam_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_split_output = "${in_split_output}"
    File out_sort_two = "${in_sort_two}"
  }
}