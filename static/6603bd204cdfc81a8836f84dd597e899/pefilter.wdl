version 1.0

task Pefilter {
  input {
    Boolean? arg_input_bam
    File? arg_output_bam
    Boolean? library_preparation_protocol
    Boolean? report_pe_tag
    Boolean? arg_number_threads
    Boolean? arg_valid_tag
  }
  command <<<
    pefilter \
      ~{if (arg_input_bam) then "-i" else ""} \
      ~{if (arg_output_bam) then "-o" else ""} \
      ~{if (library_preparation_protocol) then "-p" else ""} \
      ~{if (report_pe_tag) then "-s" else ""} \
      ~{if (arg_number_threads) then "-t" else ""} \
      ~{if (arg_valid_tag) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_input_bam: "[ --infile ] arg          Input BAM file. It should be indexed."
    arg_output_bam: "[ --outfile ] arg         Output BAM file. To save the filtered BAM file."
    library_preparation_protocol: "[ --protocol ]            Library preparation protocol. 0: traditional\\nlibrary protocol by shotgun approach; 1:\\ntraditional library protocol by Nextera\\ntransposase approach; 2: Pico. Default:\\ntraditional protocol by shotgun."
    report_pe_tag: "[ --statsonly ]           Report PE tag statistics only but not generate\\nfiltered BAM file. The statitics will show in\\nstdout."
    arg_number_threads: "[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many\\nthreads. One thread may occupy up to 5GB memory\\nfor a 50GB BAM file. Default: 1."
    arg_valid_tag: "[ --validtag ] arg        Valid tag pair in the format as `tag1,tag2` for\\ntwo ends. `N` means mapping not found. Multiple\\ntag pairs can be specified. For example, `-d\\n++,+- -d -+,--`"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_bam = "${in_arg_output_bam}"
  }
}