version 1.0

task RibotricerOrfsseq {
  input {
    File? ribot_ricer_index
    File? fast_a
    Boolean? protein
    File? save_to
  }
  command <<<
    ribotricer orfs_seq \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ribot_ricer_index: "Path to the index file of ribotricer This file\\nshould be generated using ribotricer prepare-orfs\\n[required]"
    fast_a: "Path to FASTA file  [required]"
    protein: "Output protein sequence instead of nucleotide"
    save_to: "Path to output file  [required]"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}