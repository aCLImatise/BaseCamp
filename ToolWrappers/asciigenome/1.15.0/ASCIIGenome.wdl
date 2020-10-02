version 1.0

task ASCIIGenome {
  input {
    String? region
    File? batch_file
    String input_files_displayed
  }
  command <<<
    ASCIIGenome \
      ~{input_files_displayed} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(batch_file) then ("--batchFile " +  '"' + batch_file + '"') else ""}
  >>>
  parameter_meta {
    region: ""
    batch_file: ""
    input_files_displayed: "Input  files  to  be  displayed:  bam,  bed,  gtf,\\nbigwig, bedgraph, etc"
  }
  output {
    File out_stdout = stdout()
  }
}