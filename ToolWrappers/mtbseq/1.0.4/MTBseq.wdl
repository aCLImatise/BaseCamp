version 1.0

task MTBseq {
  input {
    Boolean? check
    Boolean? step
  }
  command <<<
    MTBseq \
      ~{if (check) then "--check" else ""} \
      ~{if (step) then "--step" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check: "Check the dependencies of MTBseq"
    step: "<ESSENTIAL> This is an essential option! Choose your pipeline step as a parameter!\\nTBfull      Full workflow\\nTBbwa       Read mapping\\nTBrefine    Refinement of mapping(s)\\nTBpile      Creation of mpileup file(s)\\nTBlist      Creation of position list(s)\\nTBvariants  Calling variants\\nTBstats     Statisitcs of mapping(s) and variant calling(s)\\nTBstrains   Calling lineage from sample(s)\\nTBjoin      Joint variant analysis from defined samples\\nTBamend     Amending joint variant table(s)\\nTBgroups    Detecting groups of samples"
  }
  output {
    File out_stdout = stdout()
  }
}