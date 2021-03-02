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
    String double
    String i
    String mandatory
    String single
    String specify
    String this
    String adds
    String? ancient
    String? fast_a
    String var_if
    String? matrix
    String? mis_dot_txt
    String some
    String? dna
    String deamination
    String either
    String? or
    String program
    String? protocol
    String strand
    String? bam
    String read
    String according
    String files
    String var_input
    String? prefix
    String reads
    String will
    String var_40
    String a
    String are
    String have
    String is
    String to
    String c
    String and
    String found
    String mis_corporation
    String certain
    File? var_file
    String matrices
    String the
    String model
    String models
    String of
    String substitutions
    String var_58
    String instead
    String methylated
    String non_methylated
    String cs
    String default
  }
  command <<<
    deamSim \
      ~{double} \
      ~{i} \
      ~{mandatory} \
      ~{single} \
      ~{specify} \
      ~{this} \
      ~{adds} \
      ~{ancient} \
      ~{fast_a} \
      ~{var_if} \
      ~{matrix} \
      ~{mis_dot_txt} \
      ~{some} \
      ~{dna} \
      ~{deamination} \
      ~{either} \
      ~{or} \
      ~{program} \
      ~{protocol} \
      ~{strand} \
      ~{bam} \
      ~{read} \
      ~{according} \
      ~{files} \
      ~{var_input} \
      ~{prefix} \
      ~{reads} \
      ~{will} \
      ~{var_40} \
      ~{a} \
      ~{are} \
      ~{have} \
      ~{is} \
      ~{to} \
      ~{c} \
      ~{and} \
      ~{found} \
      ~{mis_corporation} \
      ~{certain} \
      ~{var_file} \
      ~{matrices} \
      ~{the} \
      ~{model} \
      ~{models} \
      ~{of} \
      ~{substitutions} \
      ~{var_58} \
      ~{instead} \
      ~{methylated} \
      ~{non_methylated} \
      ~{cs} \
      ~{default} \
      ~{if (read_bam_write) then "-b" else ""} \
      ~{if (produce_uncompressed_bam) then "-u" else ""} \
      ~{if (write_fasta_output) then "-o" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (last) then "-last" else ""} \
      ~{if (map_damage) then "-mapdamage" else ""} \
      ~{if (mat_file) then "-matfile" else ""} \
      ~{if (mat_file_non_meth) then "-matfilenonmeth" else ""} \
      ~{if (mat_file_meth) then "-matfilemeth" else ""} \
      ~{if (mat) then "-mat" else ""} \
      ~{if (damage) then "-damage" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gargammel-slim:1.1.2--h68ad25a_0"
  }
  parameter_meta {
    read_bam_write: "[BAM out]                       Read BAM and write output as a BAM (default: fasta)"
    produce_uncompressed_bam: "Produce uncompressed BAM (good for unix pipe)"
    write_fasta_output: "[fasta out]                     Write fasta output as a zipped fasta"
    name: "Put a tag in the read name with deam bases (default not on/not used)"
    verbose_mode: "verbose mode"
    last: "If matfile is used, do not use the substitution rates of the\\nlast row over the rest of the molecule (default: no data = use last row)"
    map_damage: "[mis.txt] [protocol]        Read the miscorporation file [mis.txt]\\nproduced by mapDamage\\n[protocol] can be either \\\"single\\\" or \\\"double\\\" (without quotes)\\nSingle strand will have C->T damage on both ends\\nDouble strand will have and C->T at the 5' end and G->A damage at the 3' end"
    mat_file: "[matrix file prefix]          Read the matrix file of substitutions instead of the default\\nProvide the prefix only, both files must end with\\n5.dat and 3.dat"
    mat_file_non_meth: "[matrix file prefix]   Read the matrix file of substitutions for non-methylated Cs\\nProvide the prefix only, both files must end with\\n5.dat and 3.dat"
    mat_file_meth: "[matrix file prefix]      Read the matrix file of substitutions for methylated Cs\\nProvide the prefix only, both files must end with\\n5.dat and 3.dat"
    mat: "[ancient DNA matrix]          For default matrices, use either \\\"single\\\" or \\\"double\\\" (without quotes)\\nSingle strand will have C->T damage on both ends\\nDouble strand will have and C->T at the 5p end and G->A damage at the 3p end"
    damage: "[v,l,d,s]                   For the Briggs et al. 2007 model\\nThe parameters must be comma-separated e.g.: -damage 0.03,0.4,0.01,0.7\\nv: nick frequency\\nl: length of overhanging ends (geometric parameter)\\nd: prob. of deamination of Cs in double-stranded parts\\ns: prob. of deamination of Cs in single-stranded parts\\n"
    double: ""
    i: ""
    mandatory: ""
    single: ""
    specify: ""
    this: ""
    adds: ""
    ancient: ""
    fast_a: ""
    var_if: ""
    matrix: ""
    mis_dot_txt: ""
    some: ""
    dna: ""
    deamination: ""
    either: ""
    or: ""
    program: ""
    protocol: ""
    strand: ""
    bam: ""
    read: ""
    according: ""
    files: ""
    var_input: ""
    prefix: ""
    reads: ""
    will: ""
    var_40: ""
    a: ""
    are: ""
    have: ""
    is: ""
    to: ""
    c: ""
    and: ""
    found: ""
    mis_corporation: ""
    certain: ""
    var_file: ""
    matrices: ""
    the: ""
    model: ""
    models: ""
    of: ""
    substitutions: ""
    var_58: ""
    instead: ""
    methylated: ""
    non_methylated: ""
    cs: ""
    default: ""
  }
  output {
    File out_stdout = stdout()
  }
}