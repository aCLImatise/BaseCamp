version 1.0

task SambambaMpileup {
  input {
    File? regions
    File? output_filename
    Directory? tmpdir
    Int? n_threads
    Int? buffer_size
    Int? output_buffer_size
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
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    regions: "provide BED file with regions\\n(no need to duplicate it in samtools args);\\nall input files must be indexed"
    output_filename: "specify output filename"
    tmpdir: "directory for temporary files"
    n_threads: "maximum number of threads to use"
    buffer_size: "chunk size (in bytes)"
    output_buffer_size: "output buffer size (in bytes)"
    samba_mba_pile_up: ""
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}