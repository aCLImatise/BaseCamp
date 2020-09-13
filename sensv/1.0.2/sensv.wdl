version 1.0

task Sensv {
  input {
    String? sample_name
    File? fast_q_file
    String? output_prefix
    Int? min_sv_size
    Int? max_sv_size
    String? disable_dp_filter
    String? disable_gen_alt_ref_bam
    String? target_sv_type
    Int? ref_ver
    File? ref
    Int? nprocs
  }
  command <<<
    sensv \
      ~{if defined(sample_name) then ("--sample_name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(fast_q_file) then ("--fastq_file " +  '"' + fast_q_file + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(min_sv_size) then ("--min_sv_size " +  '"' + min_sv_size + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max_sv_size " +  '"' + max_sv_size + '"') else ""} \
      ~{if defined(disable_dp_filter) then ("--disable_dp_filter " +  '"' + disable_dp_filter + '"') else ""} \
      ~{if defined(disable_gen_alt_ref_bam) then ("--disable_gen_altref_bam " +  '"' + disable_gen_alt_ref_bam + '"') else ""} \
      ~{if defined(target_sv_type) then ("--target_sv_type " +  '"' + target_sv_type + '"') else ""} \
      ~{if defined(ref_ver) then ("--ref_ver " +  '"' + ref_ver + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""}
  >>>
  parameter_meta {
    sample_name: "sample name"
    fast_q_file: "fastq file"
    output_prefix: "output prefix"
    min_sv_size: "min Sv Size"
    max_sv_size: "max Sv Size"
    disable_dp_filter: "disable DP filter"
    disable_gen_alt_ref_bam: "disable gen altref bam"
    target_sv_type: "target sv type"
    ref_ver: "reference version (default 37)"
    ref: "reference fasta file absolute path"
    nprocs: "max # of processes to run sensv\\n"
  }
  output {
    File out_stdout = stdout()
  }
}