version 1.0

task Cnxpy {
  input {
    File? output_file_name
    File? bam
    String extract
    String caller
  }
  command <<<
    cnx_py \
      ~{extract} \
      ~{caller} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name (json format)"
    bam: "pass a BAM file for aligner name/version extraction"
    extract: ""
    caller: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}