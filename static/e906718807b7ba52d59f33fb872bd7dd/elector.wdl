version 1.0

task Elector {
  input {
    Boolean? threads
    Boolean? corrected
    Boolean? split
    Boolean? uncorrected
    Boolean? perfect
    Boolean? fasta_file_reference_genome
    Boolean? simulator
    Boolean? correct_or
    Boolean? dazz_db
    Directory? name_output_directory
    Boolean? remap
    Boolean? minsize
    String assemble_perform_assembly
  }
  command <<<
    elector \
      ~{assemble_perform_assembly} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (corrected) then "-corrected" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (uncorrected) then "-uncorrected" else ""} \
      ~{if (perfect) then "-perfect" else ""} \
      ~{if (fasta_file_reference_genome) then "-reference" else ""} \
      ~{if (simulator) then "-simulator" else ""} \
      ~{if (correct_or) then "-corrector" else ""} \
      ~{if (dazz_db) then "-dazzDb" else ""} \
      ~{if (name_output_directory) then "-output" else ""} \
      ~{if (remap) then "-remap" else ""} \
      ~{if (minsize) then "-minsize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "[THREADS]    Number of threads"
    corrected: "[CORRECTED]\\nFasta file with corrected reads (each read sequence on\\none line)"
    split: "Corrected reads are split"
    uncorrected: "[UNCORRECTED]\\nPrefix of the reads simulation files"
    perfect: "[PERFECT]    Fasta file with reference read sequences (each read\\nsequence on one line)"
    fasta_file_reference_genome: "[REFERENCE]\\nFasta file with reference genome sequences (each\\nsequence on one line)"
    simulator: "[SIMULATOR]\\nTool used for the simulation of the long reads (either\\nnanosim or simlord)"
    correct_or: "[SOFT]     Corrector used (lowercase, in this list: lorma, mecat,\\npbdagcon, daccord). If no corrector name is provided,\\nmake sure the read's headers are correctly formatted\\n(i.e. they correspond to those of uncorrected and\\nreference files)"
    dazz_db: "[DAZZDB]      Reads database used for the correction, if the reads\\nwere corrected with Daccord or PBDagCon"
    name_output_directory: "[OUTPUTDIRPATH]\\nName for output directory"
    remap: "Perform remapping of the corrected reads to the"
    minsize: "[MINSIZE]    Do not assess reads/fragments chose length is <=\\nMINSIZE % of the original read\\n"
    assemble_perform_assembly: "-assemble             Perform assembly of the corrected reads"
  }
  output {
    File out_stdout = stdout()
    Directory out_name_output_directory = "${in_name_output_directory}"
  }
}