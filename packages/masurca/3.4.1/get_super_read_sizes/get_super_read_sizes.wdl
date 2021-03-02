version 1.0

task GetSuperReadSizes {
  input {
    File? kuni_tig_lenghts_file
    File? super_reads_file
    String cmdline_parse
  }
  command <<<
    get_super_read_sizes \
      ~{cmdline_parse} \
      ~{if defined(kuni_tig_lenghts_file) then ("--kunitig_lenghts_file " +  '"' + kuni_tig_lenghts_file + '"') else ""} \
      ~{if defined(super_reads_file) then ("--super_reads_file " +  '"' + super_reads_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kuni_tig_lenghts_file: "*file with k-unitig lengths, two columns: kunitig length"
    super_reads_file: "*file with super-read names"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}