version 1.0

task DeamSim {
  input {
    Boolean? read_bam_write
    Boolean? produce_uncompressed_bam
    Boolean? write_fasta_output
    Boolean? name
    Boolean? verbose_mode
    Boolean? last
    Boolean? map_damage
    Boolean? mat_file
    Boolean? mat_file_non_meth
    Boolean? mat_file_meth
    Boolean? mat
    Boolean? damage
    String? fast_a
    String? or
    String? bam
    File? file
  }
  command <<<
    deamSim \
      ~{fast_a} \
      ~{or} \
      ~{bam} \
      ~{file} \
      ~{true="-b" false="" read_bam_write} \
      ~{true="-u" false="" produce_uncompressed_bam} \
      ~{true="-o" false="" write_fasta_output} \
      ~{true="-name" false="" name} \
      ~{true="-v" false="" verbose_mode} \
      ~{true="-last" false="" last} \
      ~{true="-mapdamage" false="" map_damage} \
      ~{true="-matfile" false="" mat_file} \
      ~{true="-matfilenonmeth" false="" mat_file_non_meth} \
      ~{true="-matfilemeth" false="" mat_file_meth} \
      ~{true="-mat" false="" mat} \
      ~{true="-damage" false="" damage}
  >>>
  parameter_meta {
    read_bam_write: "[BAM out]                       Read BAM and write output as a BAM (default: fasta)"
    produce_uncompressed_bam: "Produce uncompressed BAM (good for unix pipe)"
    write_fasta_output: "[fasta out]                     Write fasta output as a zipped fasta"
    name: "Put a tag in the read name with deam bases (default not on/not used)"
    verbose_mode: "verbose mode"
    last: "If matfile is used, do not use the substitution rates of the last row over the rest of the molecule (default: no data = use last row)"
    map_damage: "[mis.txt] [protocol]        Read the miscorporation file [mis.txt] produced by mapDamage [protocol] can be either \"single\" or \"double\" (without quotes) Single strand will have C->T damage on both ends Double strand will have and C->T at the 5' end and G->A damage at the 3' end"
    mat_file: "[matrix file prefix]          Read the matrix file of substitutions instead of the default Provide the prefix only, both files must end with 5.dat and 3.dat"
    mat_file_non_meth: "[matrix file prefix]   Read the matrix file of substitutions for non-methylated Cs Provide the prefix only, both files must end with 5.dat and 3.dat"
    mat_file_meth: "[matrix file prefix]      Read the matrix file of substitutions for methylated Cs Provide the prefix only, both files must end with 5.dat and 3.dat"
    mat: "[ancient DNA matrix]          For default matrices, use either \"single\" or \"double\" (without quotes) Single strand will have C->T damage on both ends Double strand will have and C->T at the 5p end and G->A damage at the 3p end"
    damage: "[v,l,d,s]                   For the Briggs et al. 2007 model The parameters must be comma-separated e.g.: -damage 0.03,0.4,0.01,0.7 v: nick frequency l: length of overhanging ends (geometric parameter) d: prob. of deamination of Cs in double-stranded parts s: prob. of deamination of Cs in single-stranded parts"
    fast_a: ""
    or: ""
    bam: ""
    file: ""
  }
}