version 1.0

task MakeHtmlpl {
  input {
    Int? only_output_hairpins
    Boolean? also_create_overview
    File? supply_file_known
    File? supply_survey_file
    Boolean? report_complete_file
    Boolean? report_survey_current
    File? rfam_file_check
    File? mirbasemrd_file_produced
    File? signaturearf_file_mapped
    String? specify_organism_your
    Boolean? print_available_organisms
    Boolean? timestamp_of_run
    Boolean? sort_signature_sample
    Boolean? do_generate_pdfs
    Boolean? print_genomic_coordinates
    Boolean? supply_confidence_file
    Boolean? mirdeep_version_used
  }
  command <<<
    make_html_pl \
      ~{if defined(only_output_hairpins) then ("-v " +  '"' + only_output_hairpins + '"') else ""} \
      ~{if (also_create_overview) then "-c" else ""} \
      ~{if defined(supply_file_known) then ("-k " +  '"' + supply_file_known + '"') else ""} \
      ~{if defined(supply_survey_file) then ("-s " +  '"' + supply_survey_file + '"') else ""} \
      ~{if (report_complete_file) then "-e" else ""} \
      ~{if (report_survey_current) then "-g" else ""} \
      ~{if defined(rfam_file_check) then ("-r " +  '"' + rfam_file_check + '"') else ""} \
      ~{if defined(mirbasemrd_file_produced) then ("-q " +  '"' + mirbasemrd_file_produced + '"') else ""} \
      ~{if defined(signaturearf_file_mapped) then ("-x " +  '"' + signaturearf_file_mapped + '"') else ""} \
      ~{if defined(specify_organism_your) then ("-t " +  '"' + specify_organism_your + '"') else ""} \
      ~{if (print_available_organisms) then "-u" else ""} \
      ~{if (timestamp_of_run) then "-y" else ""} \
      ~{if (sort_signature_sample) then "-o" else ""} \
      ~{if (do_generate_pdfs) then "-d" else ""} \
      ~{if (print_genomic_coordinates) then "-a" else ""} \
      ~{if (supply_confidence_file) then "-b" else ""} \
      ~{if (mirdeep_version_used) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    only_output_hairpins: "only output hairpins with score above 2"
    also_create_overview: "also create overview in excel format."
    supply_file_known: "supply file with known miRNAs"
    supply_survey_file: "supply survey file if score cutoff is used to get information about how big is the confidence of resulting reads"
    report_complete_file: "report complete survey file"
    report_survey_current: "report survey for current score cutoff"
    rfam_file_check: "Rfam file to check for already reported small RNA sequences"
    mirbasemrd_file_produced: "miRBase.mrd file produced by quantifier module"
    signaturearf_file_mapped: "signature.arf file with mapped reads to precursors"
    specify_organism_your: "specify the organism from which your sequencing data was obtained"
    print_available_organisms: "print all available UCSC input organisms"
    timestamp_of_run: "timestamp of this run"
    sort_signature_sample: "sort signature by sample in pdf file, default is by beginning position"
    do_generate_pdfs: "do not generate pdfs"
    print_genomic_coordinates: "print genomic coordinates of mature sequence (still testing)"
    supply_confidence_file: "supply confidence file"
    mirdeep_version_used: "miRDeep2 version used"
  }
  output {
    File out_stdout = stdout()
  }
}