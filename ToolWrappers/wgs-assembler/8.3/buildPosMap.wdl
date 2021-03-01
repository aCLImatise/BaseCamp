version 1.0

task BuildPosMap {
  input {
    String? write_output_here
    String? read_assembly_here
    String? supplied_also_report
    Boolean? write_unplaced_reads
  }
  command <<<
    buildPosMap \
      ~{if defined(write_output_here) then ("-o " +  '"' + write_output_here + '"') else ""} \
      ~{if defined(read_assembly_here) then ("-i " +  '"' + read_assembly_here + '"') else ""} \
      ~{if defined(supplied_also_report) then ("-g " +  '"' + supplied_also_report + '"') else ""} \
      ~{if (write_unplaced_reads) then "-U" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_here: "write the output here"
    read_assembly_here: "read the assembly from here; default is to read stdin"
    supplied_also_report: "if supplied, also report deleted reads and read/mate library information"
    write_unplaced_reads: "write unplaced surrogate reads 'sfgctg' and 'sfgscf' (LARGE!)"
  }
  output {
    File out_stdout = stdout()
  }
}