version 1.0

task MixcrAlign {
  input {
    Boolean? no_warnings
    Boolean? verbose
    File? force_overwrite
    Boolean? overwrite_if_required
    File? species
    File? report
    File? json_report
    String? vdjc_gene_library
    String? read_preprocessing_trimming_threshold
    Int? trimming_window_size
    String? parameters
    Boolean? stringstring_overrides_default
    Boolean? write_all
    Int? not_aligned_r_one
    Int? not_aligned_r_two
    Int? limit
    String? threads
    String scr
    String align
    Int? failed_read_sr_one
    String? var_20
    String? var_21
    String? report_file
  }
  command <<<
    mixcr align \
      ~{scr} \
      ~{align} \
      ~{failed_read_sr_one} \
      ~{var_20} \
      ~{var_21} \
      ~{report_file} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (overwrite_if_required) then "--overwrite-if-required" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(json_report) then ("--json-report " +  '"' + json_report + '"') else ""} \
      ~{if defined(vdjc_gene_library) then ("--library " +  '"' + vdjc_gene_library + '"') else ""} \
      ~{if defined(read_preprocessing_trimming_threshold) then ("--trimming-quality-threshold " +  '"' + read_preprocessing_trimming_threshold + '"') else ""} \
      ~{if defined(trimming_window_size) then ("--trimming-window-size " +  '"' + trimming_window_size + '"') else ""} \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if (stringstring_overrides_default) then "-O" else ""} \
      ~{if (write_all) then "--write-all" else ""} \
      ~{if defined(not_aligned_r_one) then ("--not-aligned-R1 " +  '"' + not_aligned_r_one + '"') else ""} \
      ~{if defined(not_aligned_r_two) then ("--not-aligned-R2 " +  '"' + not_aligned_r_two + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_warnings: "Suppress all warning messages."
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    overwrite_if_required: "Overwrite output file if it is corrupted or if it was generated from\\ndifferent input file or with different parameters. -f / --force-overwrite\\noverrides this option."
    species: "Species (organism), as specified in library file or taxon id.\\nPossible values: hs, HomoSapiens, musmusculus, mmu, hsa, 9606, 10090 etc."
    report: "Report file (human readable version, see -j / --json-report for machine\\nreadable report)"
    json_report: "JSON formatted report file"
    vdjc_gene_library: "V/D/J/C gene library"
    read_preprocessing_trimming_threshold: "Read pre-processing: trimming quality threshold"
    trimming_window_size: "Read pre-processing: trimming window size"
    parameters: "Parameters preset."
    stringstring_overrides_default: "<String=String>       Overrides default aligner parameter values"
    write_all: "Write alignment results for all input reads (even if alignment failed)."
    not_aligned_r_one: "Pipe not aligned R1 reads into separate file."
    not_aligned_r_two: "Pipe not aligned R2 reads into separate file."
    limit: "Maximal number of reads to process"
    threads: "Processing threads"
    scr: ""
    align: ""
    failed_read_sr_one: ""
    var_20: ""
    var_21: ""
    report_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}