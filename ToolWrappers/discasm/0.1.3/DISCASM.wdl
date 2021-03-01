version 1.0

task DISCASM {
  input {
    File? chimeric_junctions
    File? aligned_bam
    File? left_fq
    File? right_fq
    Directory? out_dir
    String? de_novo_assembler
    String? add_trinity_params
    Boolean? normalize_reads
  }
  command <<<
    DISCASM \
      ~{if defined(chimeric_junctions) then ("--chimeric_junctions " +  '"' + chimeric_junctions + '"') else ""} \
      ~{if defined(aligned_bam) then ("--aligned_bam " +  '"' + aligned_bam + '"') else ""} \
      ~{if defined(left_fq) then ("--left_fq " +  '"' + left_fq + '"') else ""} \
      ~{if defined(right_fq) then ("--right_fq " +  '"' + right_fq + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(de_novo_assembler) then ("--denovo_assembler " +  '"' + de_novo_assembler + '"') else ""} \
      ~{if defined(add_trinity_params) then ("--add_trinity_params " +  '"' + add_trinity_params + '"') else ""} \
      ~{if (normalize_reads) then "--normalize_reads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chimeric_junctions: "STAR Chimeric.out.junction file"
    aligned_bam: "aligned bam file from your favorite rna-seq alignment\\ntool"
    left_fq: "left fastq file"
    right_fq: "right fastq file"
    out_dir: "output directory"
    de_novo_assembler: "de novo assembly method: Trinity|Oases|OasesMultiK"
    add_trinity_params: "any additional parameters to pass on to Trinity if\\nTrinity is the chosen assembler."
    normalize_reads: "perform in silico normalization prior to de novo\\nassembly (not needed if using Trinity, since Trinity\\nperforms normalization internally\\n"
  }
  output {
    File out_stdout = stdout()
    File out_chimeric_junctions = "${in_chimeric_junctions}"
    Directory out_out_dir = "${in_out_dir}"
  }
}