version 1.0

task DRepBonus {
  input {
    Int? processors
    Boolean? debug
    Boolean? run_tax
    String? tax_method
    Int? percent
    File? cent_index
    Boolean? check_dependencies
    Boolean? genomes_check_format
  }
  command <<<
    dRep bonus \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (run_tax) then "--run_tax" else ""} \
      ~{if defined(tax_method) then ("--tax_method " +  '"' + tax_method + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(cent_index) then ("--cent_index " +  '"' + cent_index + '"') else ""} \
      ~{if (check_dependencies) then "--check_dependencies" else ""} \
      ~{if (genomes_check_format) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    run_tax: "generate taxonomy information (Tdb) (default: False)"
    tax_method: "Method of determining taxonomy\\npercent = The most descriptive taxonimic level with at least (per) hits\\nmax     = The centrifuge taxonomic level with the most overall hits (default: percent)"
    percent: "minimum percent for percent method (default: 50)"
    cent_index: "path to centrifuge index (for example,\\n/home/mattolm/download/centrifuge/indices/b+h+v\\n(default: None)"
    check_dependencies: "Check if program has access to all dependencies\\n(default: False)"
    genomes_check_format: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\\ngenomes to check in .fasta format (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}