version 1.0

task DifferentialModification {
  input {
    File? bed
    Array[String] a_group
    Array[String] b_group
    Float? cut_off
    File? out
  }
  command <<<
    differential_modification \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(a_group) then ("--Agroup " +  '"' + a_group + '"') else ""} \
      ~{if defined(b_group) then ("--Bgroup " +  '"' + b_group + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Bed file to aggregate modifications on."
    a_group: "Frequencies of group A."
    b_group: "Frequencies of group B."
    cut_off: "FDR cutoff. Default: 0.05"
    out: "File to write results to. Default: stdout."
  }
  output {
    File out_stdout = stdout()
  }
}