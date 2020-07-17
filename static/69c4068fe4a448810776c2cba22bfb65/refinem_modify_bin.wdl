version 1.0

task RefinemModifyBin {
  input {
    Int? min_len
    String? add
    String? remove
    String? outlier_file
    Boolean? silent
    String scaffold_file
    String genome_file
    String output_genome
  }
  command <<<
    refinem modify_bin \
      ~{scaffold_file} \
      ~{genome_file} \
      ~{output_genome} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(add) then ("--add " +  '"' + add + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(outlier_file) then ("--outlier_file " +  '"' + outlier_file + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    min_len: "minimum length of scaffold to allow it to be added to a genome"
    add: "ID of scaffold to add to genome (may specify multiple times)"
    remove: "ID of scaffold to remove from bin (may specify multiple times)"
    outlier_file: "remove all scaffolds identified as outliers (see outlier command)"
    silent: "suppress output of logger"
    scaffold_file: "scaffolds binned to generate putative genomes"
    genome_file: "genome to be modified"
    output_genome: "modified genome"
  }
}