version 1.0

task GenieBamTofastq {
  input {
    String? bam
    String? excluded_flags
    String? fq
    String? fq_two
    String? required_flags
    String? flags
  }
  command <<<
    genie bam tofastq \
      ~{flags} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(excluded_flags) then ("--excludedflags " +  '"' + excluded_flags + '"') else ""} \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(required_flags) then ("--requiredflags " +  '"' + required_flags + '"') else ""}
  >>>
  parameter_meta {
    bam: "Input BAM file (*require)"
    excluded_flags: "excluded flags (int16)"
    fq: "Output FASTQ file (fq1 for paired-end reads) (*require)"
    fq_two: "Output FASTQ2 for paired-end reads (If empty, all data will be at fq)"
    required_flags: "required flags (int16)"
    flags: ""
  }
}