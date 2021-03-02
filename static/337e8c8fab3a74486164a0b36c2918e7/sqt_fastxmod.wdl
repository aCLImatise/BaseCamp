version 1.0

task SqtFastxmod {
  input {
    File? names
    File? not_names
    String? cut_off
    Int? substitute
    Int? length
    Int? minimum_length
    Int? max_errors
    String? allowed_characters
    Boolean? reverse_complement
    Boolean? upper
    Boolean? lower
    String? constant_quality
    Boolean? fast_a
    Boolean? unique_names
    Int? width
    String? seed
    String? substitution_rate
    String necessary
  }
  command <<<
    sqt fastxmod \
      ~{necessary} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(not_names) then ("--not-names " +  '"' + not_names + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(substitute) then ("--substitute " +  '"' + substitute + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(minimum_length) then ("--minimum-length " +  '"' + minimum_length + '"') else ""} \
      ~{if defined(max_errors) then ("--max-errors " +  '"' + max_errors + '"') else ""} \
      ~{if defined(allowed_characters) then ("--allowed-characters " +  '"' + allowed_characters + '"') else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (upper) then "--upper" else ""} \
      ~{if (lower) then "--lower" else ""} \
      ~{if defined(constant_quality) then ("--constant-quality " +  '"' + constant_quality + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (unique_names) then "--unique-names" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(substitution_rate) then ("--substitution-rate " +  '"' + substitution_rate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    names: "Keep only records whose name occurs in FILE (one per\\nline)"
    not_names: "Discard records whose name occurs in FILE (one per\\nline)"
    cut_off: "Quality cutoff. Only when input format is FASTQ"
    substitute: "Randomly substitute bases at probability PROB.\\nDefault: 0"
    length: "Shorten records to LENGTH (default: do not shorten)"
    minimum_length: "Discard reads shorter than LENGTH"
    max_errors: "Discard reads whose expected number of errors\\n(computed from quality values) exceeds ERRORS."
    allowed_characters: "Discard reads that contain characters other than those\\nin CHARS. CHARS is case-sensitive. Example: -c\\nACGTacgt."
    reverse_complement: "Reverse-complement each sequence"
    upper: "Convert sequence characters to uppercase"
    lower: "Convert sequence characters to lowercase"
    constant_quality: "Set all quality values to QUALITY. Use this to convert\\nfrom FASTA to FASTQ."
    fast_a: "Always output FASTA (drop qualities if input is FASTQ)"
    unique_names: "Make record names unique by appending _1, _2 etc. when"
    width: "Characters per line in output FASTA (default: 80). Set\\nto 0 to disallow line breaks entirely. This is ignored\\nfor FASTQ files."
    seed: "Set random seed for reproducible runs. Relevant when"
    substitution_rate: "used.(default: use different"
    necessary: "--limit N, -n N       Pick only the first N sequences (default: all)"
  }
  output {
    File out_stdout = stdout()
  }
}