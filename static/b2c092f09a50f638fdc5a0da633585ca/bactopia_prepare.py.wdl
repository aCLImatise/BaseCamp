version 1.0

task Bactopiapreparepy {
  input {
    String? fast_q_ext
    String? assembly_ext
    String? fast_q_seperator
    String? fast_q_pattern
    Int? pe_one_pattern
    Int? pe_two_pattern
    String? assembly_pattern
    Boolean? recursive
    Boolean? long_reads
    Boolean? merge
    String bac_topia
  }
  command <<<
    bactopia_prepare_py \
      ~{bac_topia} \
      ~{if defined(fast_q_ext) then ("--fastq_ext " +  '"' + fast_q_ext + '"') else ""} \
      ~{if defined(assembly_ext) then ("--assembly_ext " +  '"' + assembly_ext + '"') else ""} \
      ~{if defined(fast_q_seperator) then ("--fastq_seperator " +  '"' + fast_q_seperator + '"') else ""} \
      ~{if defined(fast_q_pattern) then ("--fastq_pattern " +  '"' + fast_q_pattern + '"') else ""} \
      ~{if defined(pe_one_pattern) then ("--pe1_pattern " +  '"' + pe_one_pattern + '"') else ""} \
      ~{if defined(pe_two_pattern) then ("--pe2_pattern " +  '"' + pe_two_pattern + '"') else ""} \
      ~{if defined(assembly_pattern) then ("--assembly_pattern " +  '"' + assembly_pattern + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (long_reads) then "--long_reads" else ""} \
      ~{if (merge) then "--merge" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.2--0"
  }
  parameter_meta {
    fast_q_ext: "Extension of the FASTQs. Default: .fastq.gz"
    assembly_ext: "Extension of the FASTA assemblies. Default: .fna.gz"
    fast_q_seperator: "Split FASTQ name on the last occurrence of the\\nseparator. Default: _"
    fast_q_pattern: "Glob pattern to match FASTQs. Default: *.fastq.gz"
    pe_one_pattern: "Designates difference first set of paired-end reads.\\nDefault: ([Aa]|[Rr]1) (R1, r1, 1, A, a)"
    pe_two_pattern: "Designates difference second set of paired-end reads.\\nDefault: ([Bb]|[Rr]2) (R2, r2, 2, AB b)"
    assembly_pattern: "Glob pattern to match assembly FASTAs. Default:\\n*.fna.gz"
    recursive: "Directories will be traversed recursively"
    long_reads: "Single-end reads should be treated as long reads"
    merge: "Flag samples with multiple read sets to be merged by"
    bac_topia: "--prefix STR          Replace the absolute path with a given string."
  }
  output {
    File out_stdout = stdout()
  }
}