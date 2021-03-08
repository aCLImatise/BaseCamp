version 1.0

task BcbioFastqUmiPreppyAutopair {
  input {
    Int? cores
    Directory? outdir
    Int? tag_one
    Int? tag_two
    String files
  }
  command <<<
    bcbio_fastq_umi_prep_py autopair \
      ~{files} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tag_one) then ("--tag1 " +  '"' + tag_one + '"') else ""} \
      ~{if defined(tag_two) then ("--tag2 " +  '"' + tag_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcbio-nextgen:1.2.7--pyh3252c3a_0"
  }
  parameter_meta {
    cores: "Number of cores, allowing running samples in parallel"
    outdir: "Output directory to write UMI prepped fastqs"
    tag_one: "Duplex read 1 tag -- bases to trim from 5' end"
    tag_two: "Duplex read 2 tag -- bases to trim from 5' end"
    files: "All fastq files to pair and process"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}