version 1.0

task BamFillUnaligned.pyOutputFile {
  input {
    String? f
    String? q
    String bam_fill_unaligned_do_tpy
    String input_file
    String output_file
  }
  command <<<
    bam_fill_unaligned.py output_file \
      ~{bam_fill_unaligned_do_tpy} \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    q: ""
    bam_fill_unaligned_do_tpy: ""
    input_file: ""
    output_file: ""
  }
}