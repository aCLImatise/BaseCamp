version 1.0

task RsemRefseqExtractPrimaryAssembly {
  input {
    String input_top_level_assembly_dot_fna
    String output_primary_assembly_dot_fna
  }
  command <<<
    rsem-refseq-extract-primary-assembly \
      ~{input_top_level_assembly_dot_fna} \
      ~{output_primary_assembly_dot_fna}
  >>>
  parameter_meta {
    input_top_level_assembly_dot_fna: ""
    output_primary_assembly_dot_fna: ""
  }
}