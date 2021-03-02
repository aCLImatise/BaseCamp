version 1.0

task ChromosomeScaffoldersh {
  input {
    String? r
    String? q
    Int? minimum_sequence_similarity
    Boolean? merge_equence_alignments
    String? nb
    String? mandatory_nb_set
    Boolean? sm
    String? hf
    Boolean? cl
    Boolean? ch
    String? fill_unaligned_gaps
  }
  command <<<
    chromosome_scaffolder_sh \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(minimum_sequence_similarity) then ("-t " +  '"' + minimum_sequence_similarity + '"') else ""} \
      ~{if (merge_equence_alignments) then "-m" else ""} \
      ~{if defined(nb) then ("-nb " +  '"' + nb + '"') else ""} \
      ~{if defined(mandatory_nb_set) then ("-v " +  '"' + mandatory_nb_set + '"') else ""} \
      ~{if (sm) then "-sm" else ""} \
      ~{if defined(hf) then ("-hf " +  '"' + hf + '"') else ""} \
      ~{if (cl) then "-cl" else ""} \
      ~{if (ch) then "-ch" else ""} \
      ~{if defined(fill_unaligned_gaps) then ("-M " +  '"' + fill_unaligned_gaps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: "MANDATORY"
    q: "MANDATORY"
    minimum_sequence_similarity: "<minimum sequence similarity percentage: default 97>"
    merge_equence_alignments: "<merge equence alignments slack: default 100000>"
    nb: "not align reads to query contigs and do not attempt to break at misassemblies: default off"
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