version 1.0

task RiboraptorReadlengthdist {
  input {
    File? bam
    Int? save_to
  }
  command <<<
    riboraptor read_length_dist \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Path to BAM file  [required]"
    save_to: "Path to write read length dist tsv output"
  }
  output {
    File out_stdout = stdout()
  }
}