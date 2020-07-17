version 1.0

task BoltBamTofastq {
  input {
    String? input_bam_file
    String? excluded_flags
    String? fq
    String? fq_two
    String? required_flags
    String genie
    String var_6
    String to_fast_q
    String? flags
  }
  command <<<
    bolt bam tofastq \
      ~{genie} \
      ~{var_6} \
      ~{to_fast_q} \
      ~{flags} \
      ~{if defined(input_bam_file) then ("--bam " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(excluded_flags) then ("--excludedflags " +  '"' + excluded_flags + '"') else ""} \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(required_flags) then ("--requiredflags " +  '"' + required_flags + '"') else ""}
  >>>
  parameter_meta {
    input_bam_file: "Input BAM file (*require)"
    excluded_flags: "excluded flags (int16)"
    fq: "Output FASTQ file (fq1 for paired-end reads) (*require)"
    fq_two: "Output FASTQ2 for paired-end reads (If empty, all data will be at fq)"
    required_flags: "required flags (int16)"
    genie: ""
    var_6: ""
    to_fast_q: ""
    flags: ""
  }
}