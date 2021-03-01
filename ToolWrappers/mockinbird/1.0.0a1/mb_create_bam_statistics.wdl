version 1.0

task Mbcreatebamstatistics {
  input {
    File? gff_file
    String estimate_bam_statistics
    String bam_file
    String output_json
  }
  command <<<
    mb_create_bam_statistics \
      ~{estimate_bam_statistics} \
      ~{bam_file} \
      ~{output_json} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff_file: ""
    estimate_bam_statistics: ""
    bam_file: ""
    output_json: ""
  }
  output {
    File out_stdout = stdout()
  }
}