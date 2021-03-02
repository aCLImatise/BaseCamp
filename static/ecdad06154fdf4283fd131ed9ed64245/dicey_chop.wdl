version 1.0

task DiceyChop {
  input {
    Boolean? f
    Boolean? g
    Boolean? arg_read_length
    Boolean? arg_insert_size
    Boolean? generate_singleend_data
    Boolean? generate_reads_chromosome
    Boolean? reverse_complement_reads
    String danio_rerio_dot_fado_tgz
  }
  command <<<
    dicey chop \
      ~{danio_rerio_dot_fado_tgz} \
      ~{if (f) then "-f" else ""} \
      ~{if (g) then "-g" else ""} \
      ~{if (arg_read_length) then "-l" else ""} \
      ~{if (arg_insert_size) then "-i" else ""} \
      ~{if (generate_singleend_data) then "-s" else ""} \
      ~{if (generate_reads_chromosome) then "-c" else ""} \
      ~{if (reverse_complement_reads) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: "[ --fq1 ] arg (=read1)       read1 output prefix"
    g: "[ --fq2 ] arg (=read2)       read2 output prefix"
    arg_read_length: "[ --length ] arg (=101)      read length"
    arg_insert_size: "[ --insertsize ] arg (=501)  insert size"
    generate_singleend_data: "[ --se ]                     generate single-end data"
    generate_reads_chromosome: "[ --chromosome ]             generate reads by chromosome"
    reverse_complement_reads: "[ --revcomp ]                reverse complement all reads"
    danio_rerio_dot_fado_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}