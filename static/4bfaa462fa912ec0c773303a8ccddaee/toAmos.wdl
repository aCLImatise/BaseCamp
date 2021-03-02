version 1.0

task ToAmos {
  input {
    File? output_filename_standard
    File? sequence_data_file
    File? sequence_quality_score
    Int? gq
    Int? bq
    File? provide_tigr_file
    File? use_celera_assembler
    Boolean? include_surrogate_unitigs
    Boolean? utg
    File? ta
    File? ace
    Boolean? phd
    File? library_matepair_information
    File? ancilliary_data_file
    File? library_matepair_sequence
    Boolean? acc
    File? arachne
    File? sc_aff
    File? read_insert_information
    String? _map_information
    File? pos
    Int? id
  }
  command <<<
    toAmos \
      ~{if defined(output_filename_standard) then ("-o " +  '"' + output_filename_standard + '"') else ""} \
      ~{if defined(sequence_data_file) then ("-s " +  '"' + sequence_data_file + '"') else ""} \
      ~{if defined(sequence_quality_score) then ("-q " +  '"' + sequence_quality_score + '"') else ""} \
      ~{if defined(gq) then ("-gq " +  '"' + gq + '"') else ""} \
      ~{if defined(bq) then ("-bq " +  '"' + bq + '"') else ""} \
      ~{if defined(provide_tigr_file) then ("-c " +  '"' + provide_tigr_file + '"') else ""} \
      ~{if defined(use_celera_assembler) then ("-a " +  '"' + use_celera_assembler + '"') else ""} \
      ~{if (include_surrogate_unitigs) then "-S" else ""} \
      ~{if (utg) then "-utg" else ""} \
      ~{if defined(ta) then ("-ta " +  '"' + ta + '"') else ""} \
      ~{if defined(ace) then ("-ace " +  '"' + ace + '"') else ""} \
      ~{if (phd) then "-phd" else ""} \
      ~{if defined(library_matepair_information) then ("-m " +  '"' + library_matepair_information + '"') else ""} \
      ~{if defined(ancilliary_data_file) then ("-x " +  '"' + ancilliary_data_file + '"') else ""} \
      ~{if defined(library_matepair_sequence) then ("-f " +  '"' + library_matepair_sequence + '"') else ""} \
      ~{if (acc) then "-acc" else ""} \
      ~{if defined(arachne) then ("-arachne " +  '"' + arachne + '"') else ""} \
      ~{if defined(sc_aff) then ("-scaff " +  '"' + sc_aff + '"') else ""} \
      ~{if defined(read_insert_information) then ("-i " +  '"' + read_insert_information + '"') else ""} \
      ~{if defined(_map_information) then ("-map " +  '"' + _map_information + '"') else ""} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_filename_standard: "- output filename ('-' for standard output)"
    sequence_data_file: "- sequence data file in FASTA format (reads names ending\\nin .1 or /1 are taken as mate pairs)"
    sequence_quality_score: "- sequence quality score file in QUAL format"
    gq: "- minimum quality score for high-quality bases (default: 30)"
    bq: "- maximum quality score for low-quality bases (default: 10)"
    provide_tigr_file: "- provide TIGR .contig file"
    use_celera_assembler: "- use Celera Assembler .asm contig file"
    include_surrogate_unitigs: "- include the surrogate unitigs in the .asm file as AMOS contigs"
    utg: "- include all UTG unitig messages in the .asm file as AMOS contigs"
    ta: "- contig file in TIGR Assembler format (.tasm)"
    ace: "- contig file in Phred ACE format (can be accompanied by -q)"
    phd: "- read the content of PHD file referenced in ACE files"
    library_matepair_information: "- library and mate-pair information file in Bambus format"
    ancilliary_data_file: "- ancilliary data file (library, mate-pair, clear range)\\nin Trace Archive XML format"
    library_matepair_sequence: "- library, mate-pair, sequence, quality, and clear\\nrange data file in Celera Assembler format"
    acc: "- use accession numbers in FRG files"
    arachne: "- scaffold file in Arachne .links format"
    sc_aff: "- scaffold file in Bambus .scaff format"
    read_insert_information: "- read insert information"
    _map_information: "- read map information"
    pos: "- TIGR-style .pos position file"
    id: "- start numbering AMOS internal IDs at this number"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_standard = "${in_output_filename_standard}"
  }
}