version 1.0

task BoltSamTofastq {
  input {
    String? excluded_flags
    String? fq
    String? fq_two
    String? required_flags
    String? input_sam_file
    String genie
    String var_6
    String to_fast_q
    String? flags
  }
  command <<<
    bolt sam tofastq \
      ~{genie} \
      ~{var_6} \
      ~{to_fast_q} \
      ~{flags} \
      ~{if defined(excluded_flags) then ("--excludedflags " +  '"' + excluded_flags + '"') else ""} \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(required_flags) then ("--requiredflags " +  '"' + required_flags + '"') else ""} \
      ~{if defined(input_sam_file) then ("--sam " +  '"' + input_sam_file + '"') else ""}
  >>>
  parameter_meta {
    excluded_flags: "excluded flags (int16)"
    fq: "Output FASTQ file (fq1 for paired-end reads) (*require)"
    fq_two: "Output FASTQ2 for paired-end reads (If empty, all data will be at fq)"
    required_flags: "required flags (int16)"
    input_sam_file: "Input SAM file (*require)"
    genie: ""
    var_6: ""
    to_fast_q: ""
    flags: ""
  }
}