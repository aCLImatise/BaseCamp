version 1.0

task HisatgenotypeLocuspy {
  input {
    String? base
  }
  command <<<
    hisatgenotype_locus_py \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""}
  >>>
  parameter_meta {
    base: ""
  }
  output {
    File out_stdout = stdout()
  }
}