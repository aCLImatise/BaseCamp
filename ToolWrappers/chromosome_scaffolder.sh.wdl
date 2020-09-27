version 1.0

task ChromosomeScaffoldersh {
  input {
    String? mandatory_nb_set
    Boolean? sm
    String? hf
    Boolean? cl
    Boolean? ch
    String? fill_unaligned_gaps
  }
  command <<<
    chromosome_scaffolder_sh \
      ~{if defined(mandatory_nb_set) then ("-s " +  '"' + mandatory_nb_set + '"') else ""} \
      ~{if (sm) then "-sm" else ""} \
      ~{if defined(hf) then ("-hf " +  '"' + hf + '"') else ""} \
      ~{if (cl) then "-cl" else ""} \
      ~{if (ch) then "-ch" else ""} \
      ~{if defined(fill_unaligned_gaps) then ("-M " +  '"' + fill_unaligned_gaps + '"') else ""}
  >>>
  parameter_meta {
    mandatory_nb_set: "MANDATORY unless -nb set"
    sm: "<samtools memory to use while sorting, need to have at least this much* number of threads PHYSICAL RAM: default 1G>"
    hf: "Pacbio HIFI reads -- speeds up the alignment"
    cl: "<coverage threshold for splitting at misassemblies: default 3>"
    ch: "<repeat coverage threshold for splitting at misassemblies: default 30>"
    fill_unaligned_gaps: "to fill unaligned gaps with reference contigs: defalut off"
  }
  output {
    File out_stdout = stdout()
  }
}