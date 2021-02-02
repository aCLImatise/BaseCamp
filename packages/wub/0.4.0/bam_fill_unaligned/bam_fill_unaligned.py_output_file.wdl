version 1.0

task BamFillUnalignedpyOutputFile {
  input {
    String? q
    String? f
    String bam_fill_unaligned_do_tpy
    String input_file
    String output_file
  }
  command <<<
    bam_fill_unaligned_py output_file \
      ~{bam_fill_unaligned_do_tpy} \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    f: ""
    bam_fill_unaligned_do_tpy: ""
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}