version 1.0

task CovermMake {
  input {
    Directory? output_directory
    File? reference
    Int? threads
    File? forward_fastaq_files
    File? reverse_fastaq_files
    File? coupled
    File? interleaved
    File? single
    Int? mapper
    Int? minimap_two_params
    Boolean? minimap_two_reference_is_index
    String? bwa_params
    Boolean? discard_unmapped
  }
  command <<<
    coverm make \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(forward_fastaq_files) then ("-1 " +  '"' + forward_fastaq_files + '"') else ""} \
      ~{if defined(reverse_fastaq_files) then ("-2 " +  '"' + reverse_fastaq_files + '"') else ""} \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(interleaved) then ("--interleaved " +  '"' + interleaved + '"') else ""} \
      ~{if defined(single) then ("--single " +  '"' + single + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(minimap_two_params) then ("--minimap2-params " +  '"' + minimap_two_params + '"') else ""} \
      ~{if (minimap_two_reference_is_index) then "--minimap2-reference-is-index" else ""} \
      ~{if defined(bwa_params) then ("--bwa-params " +  '"' + bwa_params + '"') else ""} \
      ~{if (discard_unmapped) then "--discard-unmapped" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory: "Where generated BAM files will go"
    reference: "..             FASTA file of contigs e.g. concatenated\\ngenomes or assembly, or minimap2 index\\n(with --minimap2-reference-is-index),\\nor BWA index stem (with -p bwa-mem).\\nIf multiple references FASTA files are\\nprovided and --sharded is specified,\\nthen reads will be mapped to references\\nseparately as sharded BAMs."
    threads: "Number of threads to use for mapping"
    forward_fastaq_files: "..                          Forward FASTA/Q file(s) for mapping"
    reverse_fastaq_files: "..                          Reverse FASTA/Q file(s) for mapping"
    coupled: "<PATH> ..        One or more pairs of forward and reverse\\nFASTA/Q files for mapping in order\\n<sample1_R1.fq.gz> <sample1_R2.fq.gz>\\n<sample2_R1.fq.gz> <sample2_R2.fq.gz> .."
    interleaved: "..               Interleaved FASTA/Q files(s) for mapping."
    single: "..                    Unpaired FASTA/Q files(s) for mapping."
    mapper: "Underlying mapping software used\\n(\\\"minimap2-sr\\\", \\\"bwa-mem\\\", \\\"minimap2-ont\\\",\\n\\\"minimap2-pb\\\", or \\\"minimap2-no-preset\\\").\\nminimap2 -sr, -ont, -pb, -no-preset specify\\n'-x' preset of minimap2 to be used\\n(with map-ont, map-pb for -ont, -pb).\\n[default: \\\"minimap2-sr\\\"]"
    minimap_two_params: "Extra parameters to provide to minimap2,\\nboth indexing command (if used) and for\\nmapping. Note that usage of this parameter\\nhas security implications if untrusted input\\nis specified. '-a' is always specified.\\n[default \\\"\\\"]"
    minimap_two_reference_is_index: "Treat reference as a minimap2 database, not\\nas a FASTA file."
    bwa_params: "Extra parameters to provide to BWA. Note\\nthat usage of this parameter has security\\nimplications if untrusted input is specified.\\n[default \\\"\\\"]"
    discard_unmapped: "Exclude unmapped reads from generated BAM files."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}