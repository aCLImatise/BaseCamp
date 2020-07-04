version 1.0

task SambambaMpileup {
  input {
    File? regions
    String? output_filename
    String? tmpdir
    String? n_threads
    String? buffer_size
    String? output_buffer_size
    String samba_mba_pile_up
    String input_dot_bam
  }
  command <<<
    sambamba mpileup \
      ~{samba_mba_pile_up} \
      ~{input_dot_bam} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(output_filename) then ("--output-filename " +  '"' + output_filename + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""}
  >>>
  parameter_meta {
    regions: "provide BED file with regions (no need to duplicate it in samtools args); all input files must be indexed"
    output_filename: "specify output filename"
    tmpdir: "directory for temporary files"
    n_threads: "maximum number of threads to use"
    buffer_size: "chunk size (in bytes)"
    output_buffer_size: "output buffer size (in bytes)"
    samba_mba_pile_up: ""
    input_dot_bam: ""
  }
}