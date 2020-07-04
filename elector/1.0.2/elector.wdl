version 1.0

task Elector {
  input {
    Boolean? _number_threads
    Boolean? fasta_file_corrected
    Boolean? split
    Boolean? uncorrected
    Boolean? perfect
    Boolean? reference
    Boolean? simulator
    Boolean? correct_or
    Boolean? dazz_db
    Boolean? name_output_directory
    Boolean? remap
    Boolean? assemble
    Boolean? minsize
    String? var_13
    String? var_14
  }
  command <<<
    elector \
      ~{var_13} \
      ~{var_14} \
      ~{true="-threads" false="" _number_threads} \
      ~{true="-corrected" false="" fasta_file_corrected} \
      ~{true="-split" false="" split} \
      ~{true="-uncorrected" false="" uncorrected} \
      ~{true="-perfect" false="" perfect} \
      ~{true="-reference" false="" reference} \
      ~{true="-simulator" false="" simulator} \
      ~{true="-corrector" false="" correct_or} \
      ~{true="-dazzDb" false="" dazz_db} \
      ~{true="-output" false="" name_output_directory} \
      ~{true="-remap" false="" remap} \
      ~{true="-assemble" false="" assemble} \
      ~{true="-minsize" false="" minsize}
  >>>
  parameter_meta {
    _number_threads: "[THREADS]    Number of threads"
    fasta_file_corrected: "[CORRECTED] Fasta file with corrected reads (each read sequence on one line)"
    split: "Corrected reads are split"
    uncorrected: "[UNCORRECTED] Prefix of the reads simulation files"
    perfect: "[PERFECT]    Fasta file with reference read sequences (each read sequence on one line)"
    reference: "[REFERENCE] Fasta file with reference genome sequences (each sequence on one line)"
    simulator: "[SIMULATOR] Tool used for the simulation of the long reads (either nanosim or simlord)"
    correct_or: "[SOFT]     Corrector used (lowercase, in this list: lorma, mecat, pbdagcon, daccord). If no corrector name is provided, make sure the read's headers are correctly formatted (i.e. they correspond to those of uncorrected and reference files)"
    dazz_db: "[DAZZDB]      Reads database used for the correction, if the reads were corrected with Daccord or PBDagCon"
    name_output_directory: "[OUTPUTDIRPATH] Name for output directory"
    remap: "Perform remapping of the corrected reads to the reference"
    assemble: "Perform assembly of the corrected reads"
    minsize: "[MINSIZE]    Do not assess reads/fragments chose length is <= MINSIZE % of the original read"
    var_13: ""
    var_14: ""
  }
}