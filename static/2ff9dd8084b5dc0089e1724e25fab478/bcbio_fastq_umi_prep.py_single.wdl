version 1.0

task BcbioFastqUmiPreppySingle {
  input {
    Int? cores
    Int? tag_one
    Int? tag_two
    String out_base
    Int read_one_fq
    Int read_two_fq
    String umi_fq
  }
  command <<<
    bcbio_fastq_umi_prep_py single \
      ~{out_base} \
      ~{read_one_fq} \
      ~{read_two_fq} \
      ~{umi_fq} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(tag_one) then ("--tag1 " +  '"' + tag_one + '"') else ""} \
      ~{if defined(tag_two) then ("--tag2 " +  '"' + tag_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0"
  }
  parameter_meta {
    cores: "Number of cores to use for parallel bgzip"
    tag_one: "Duplex read 1 tag -- bases to trim from 5' end"
    tag_two: "Duplex read 2 tag -- bases to trim from 5' end"
    out_base: "Base name for output files -- you get\\n<base_name>_R1.fq.gz"
    read_one_fq: "Input fastq, read 1"
    read_two_fq: "Input fastq, read 2"
    umi_fq: "Input fastq, UMIs"
  }
  output {
    File out_stdout = stdout()
  }
}