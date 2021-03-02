version 1.0

task Cnvnator {
  input {
    Boolean? lite
    Boolean? tree
    Array[Int] chrom
    String? genome
    String? root
    Int file_one_dot_bam
  }
  command <<<
    cnvnator \
      ~{file_one_dot_bam} \
      ~{if (lite) then "-lite" else ""} \
      ~{if (tree) then "-tree" else ""} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(root) then ("-root " +  '"' + root + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lite: ""
    tree: ""
    chrom: ""
    genome: ""
    root: ""
    file_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}