version 1.0

task SurpyvorPurge2d {
  input {
    Boolean? verbose
    File? sambam_file_write
    String bam
  }
  command <<<
    surpyvor purge2d \
      ~{bam} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sambam_file_write) then ("--output " +  '"' + sambam_file_write + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print out more information while running."
    sambam_file_write: "sam/bam file to write filtered alignments to [stdout]\\n"
    bam: "bam file to filter"
  }
  output {
    File out_stdout = stdout()
  }
}