version 1.0

task MafToConcatFastapy {
  input {
    String? nowrap
  }
  command <<<
    maf_to_concat_fasta_py \
      ~{if defined(nowrap) then ("--nowrap " +  '"' + nowrap + '"') else ""}
  >>>
  parameter_meta {
    nowrap: ""
  }
  output {
    File out_stdout = stdout()
  }
}