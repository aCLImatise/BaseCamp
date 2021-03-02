version 1.0

task Fa2htgs {
  input {
    Boolean? filename_fasta_optionaldefault
    Boolean? filename_seqsubmit_templatesub
    File? filename_optionaldefault_stdout
    File? log_errors_file
    Boolean? organism_name_optionaldefault
    Boolean? sequence_name
    Boolean? length_sequence_bp
    Boolean? genome_center_tag
    Boolean? htgs_phase_default
    Boolean? genbank_accession_update
    Boolean? remark_update_optional
    Boolean? clone_name_optional
    Boolean? title_sequence_optional
    Boolean? take_comment_template
    Boolean? take_biosource_template
    Boolean? secondary_accession_number
    Boolean? clone_library_name
    Boolean? map__optional
    Boolean? filename_comment_optional
    Boolean? filename_phrap_input_optional
    Boolean? contigs_use_separate
    Boolean? filename_accession_optional
    Boolean? coordinates_resulting_sequence
    Boolean? sequence_optionaldefault_f
    Boolean? strain_name_optional
    Boolean? gap_length_default
    Boolean? annotate_assemblyfragments_optionaldefault
    Boolean? sp_clone_eg
    Boolean? t_clone_eg
    Boolean? filename_phrap_contig_optional
    Boolean? htgsfulltop_keyword_optionaldefault
    Boolean? htgsactivefin_keyword_optionaldefault
    Boolean? htgscancelled_keyword_optionaldefault
    Boolean? filename_quality_optional
    Boolean? whole_genome_shotgun
    Boolean? arbitrary_keyword_optional
  }
  command <<<
    fa2htgs \
      ~{if (filename_fasta_optionaldefault) then "-i" else ""} \
      ~{if (filename_seqsubmit_templatesub) then "-t" else ""} \
      ~{if (filename_optionaldefault_stdout) then "-o" else ""} \
      ~{if (log_errors_file) then "-e" else ""} \
      ~{if (organism_name_optionaldefault) then "-n" else ""} \
      ~{if (sequence_name) then "-s" else ""} \
      ~{if (length_sequence_bp) then "-l" else ""} \
      ~{if (genome_center_tag) then "-g" else ""} \
      ~{if (htgs_phase_default) then "-p" else ""} \
      ~{if (genbank_accession_update) then "-a" else ""} \
      ~{if (remark_update_optional) then "-r" else ""} \
      ~{if (clone_name_optional) then "-c" else ""} \
      ~{if (title_sequence_optional) then "-d" else ""} \
      ~{if (take_comment_template) then "-m" else ""} \
      ~{if (take_biosource_template) then "-u" else ""} \
      ~{if (secondary_accession_number) then "-x" else ""} \
      ~{if (clone_library_name) then "-C" else ""} \
      ~{if (map__optional) then "-M" else ""} \
      ~{if (filename_comment_optional) then "-O" else ""} \
      ~{if (filename_phrap_input_optional) then "-T" else ""} \
      ~{if (contigs_use_separate) then "-P" else ""} \
      ~{if (filename_accession_optional) then "-A" else ""} \
      ~{if (coordinates_resulting_sequence) then "-X" else ""} \
      ~{if (sequence_optionaldefault_f) then "-D" else ""} \
      ~{if (strain_name_optional) then "-S" else ""} \
      ~{if (gap_length_default) then "-b" else ""} \
      ~{if (annotate_assemblyfragments_optionaldefault) then "-N" else ""} \
      ~{if (sp_clone_eg) then "-6" else ""} \
      ~{if (t_clone_eg) then "-7" else ""} \
      ~{if (filename_phrap_contig_optional) then "-L" else ""} \
      ~{if (htgsfulltop_keyword_optionaldefault) then "-f" else ""} \
      ~{if (htgsactivefin_keyword_optionaldefault) then "-v" else ""} \
      ~{if (htgscancelled_keyword_optionaldefault) then "-q" else ""} \
      ~{if (filename_quality_optional) then "-Q" else ""} \
      ~{if (whole_genome_shotgun) then "-w" else ""} \
      ~{if (arbitrary_keyword_optional) then "-k" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_fasta_optionaldefault: "Filename for fasta input [File In]  Optional\\ndefault = stdin"
    filename_seqsubmit_templatesub: "Filename for Seq-submit template [File In]\\ndefault = template.sub"
    filename_optionaldefault_stdout: "Filename for asn.1 output [File Out]  Optional\\ndefault = stdout"
    log_errors_file: "Log errors to file named: [File Out]  Optional"
    organism_name_optionaldefault: "Organism name? [String]  Optional\\ndefault = Homo sapiens"
    sequence_name: "Sequence name? [String]"
    length_sequence_bp: "length of sequence in bp? [Integer]\\ndefault = 0"
    genome_center_tag: "Genome Center tag? [String]"
    htgs_phase_default: "HTGS phase? [Integer]\\ndefault = 1\\nrange from 0 to 3"
    genbank_accession_update: "GenBank accession (if an update) [String]  Optional"
    remark_update_optional: "Remark for update? [String]  Optional"
    clone_name_optional: "Clone name? [String]  Optional"
    title_sequence_optional: "Title for sequence? [String]  Optional"
    take_comment_template: "Take comment from template ? [T/F]  Optional\\ndefault = F"
    take_biosource_template: "Take biosource from template ? [T/F]  Optional\\ndefault = F"
    secondary_accession_number: "Secondary accession number, separate by commas if multiple, s.t. U10000,L11000 [String]  Optional"
    clone_library_name: "Clone library name? [String]  Optional"
    map__optional: "Map? [String]  Optional"
    filename_comment_optional: "Filename for the comment: [File In]  Optional"
    filename_phrap_input_optional: "Filename for phrap input [File In]  Optional"
    contigs_use_separate: "Contigs to use, separate by commas if multiple [String]  Optional"
    filename_accession_optional: "Filename for accession list input [File In]  Optional"
    coordinates_resulting_sequence: "Coordinates are on the resulting sequence ? [T/F]  Optional\\ndefault = F"
    sequence_optionaldefault_f: "HTGS_DRAFT sequence? [T/F]  Optional\\ndefault = F"
    strain_name_optional: "Strain name? [String]  Optional"
    gap_length_default: "Gap length [Integer]\\ndefault = 100\\nrange from 0 to 1000000000"
    annotate_assemblyfragments_optionaldefault: "Annotate assembly_fragments [T/F]  Optional\\ndefault = F"
    sp_clone_eg: "SP6 clone (e.g., Contig1,left) [String]  Optional"
    t_clone_eg: "T7 clone (e.g., Contig2,right) [String]  Optional"
    filename_phrap_contig_optional: "Filename for phrap contig order [File In]  Optional"
    htgsfulltop_keyword_optionaldefault: "htgs_fulltop keyword [T/F]  Optional\\ndefault = F"
    htgsactivefin_keyword_optionaldefault: "htgs_activefin keyword [T/F]  Optional\\ndefault = F"
    htgscancelled_keyword_optionaldefault: "htgs_cancelled keyword [T/F]  Optional\\ndefault = F"
    filename_quality_optional: "Filename for quality scores [File In]  Optional"
    whole_genome_shotgun: "Whole Genome Shotgun? [T/F]  Optional\\ndefault = F"
    arbitrary_keyword_optional: "Arbitrary Keyword [String]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_filename_optionaldefault_stdout = "${in_filename_optionaldefault_stdout}"
    File out_log_errors_file = "${in_log_errors_file}"
  }
}