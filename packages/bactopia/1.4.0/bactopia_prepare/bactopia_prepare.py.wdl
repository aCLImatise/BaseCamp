version 1.0

task Bactopiapreparepy {
  input {
    String? fast_q_ext
    String? assembly_ext
    String? fast_q_seperator
    String? fast_q_pattern
    String? assembly_pattern
    Boolean? long_reads
    String bac_topia
    String prepare
  }
  command <<<
    bactopia_prepare_py \
      ~{bac_topia} \
      ~{prepare} \
      ~{if defined(fast_q_ext) then ("--fastq_ext " +  '"' + fast_q_ext + '"') else ""} \
      ~{if defined(assembly_ext) then ("--assembly_ext " +  '"' + assembly_ext + '"') else ""} \
      ~{if defined(fast_q_seperator) then ("--fastq_seperator " +  '"' + fast_q_seperator + '"') else ""} \
      ~{if defined(fast_q_pattern) then ("--fastq_pattern " +  '"' + fast_q_pattern + '"') else ""} \
      ~{if defined(assembly_pattern) then ("--assembly_pattern " +  '"' + assembly_pattern + '"') else ""} \
      ~{if (long_reads) then "--long_reads" else ""}
  >>>
  parameter_meta {
    fast_q_ext: "Extension of the FASTQs. Default: .fastq.gz"
    assembly_ext: "Extension of the FASTA assemblies. Default: .fna.gz"
    fast_q_seperator: "Split FASTQ name on the last occurrence of the\\nseparator. Default: _"
    fast_q_pattern: "Glob pattern to match FASTQs. Default: *.fastq.gz"
    assembly_pattern: "Glob pattern to match assembly FASTAs. Default:\\n*.fna.gz"
    long_reads: "Single-end reads should be treated as long reads"
    bac_topia: ""
    prepare: ""
  }
  output {
    File out_stdout = stdout()
  }
}