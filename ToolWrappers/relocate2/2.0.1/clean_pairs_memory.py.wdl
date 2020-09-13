version 1.0

task CleanPairsMemorypy {
  input {
    Int? fq_one
    Int? fq_two
    String? repeat
    String? fq_dir
    String? seq_tk
    Boolean? v
  }
  command <<<
    clean_pairs_memory_py \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(repeat) then ("--repeat " +  '"' + repeat + '"') else ""} \
      ~{if defined(fq_dir) then ("--fq_dir " +  '"' + fq_dir + '"') else ""} \
      ~{if defined(seq_tk) then ("--seqtk " +  '"' + seq_tk + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    fq_one: ""
    fq_two: ""
    repeat: ""
    fq_dir: ""
    seq_tk: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}