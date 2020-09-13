version 1.0

task MakeHtml2pl {
  input {
    Int? only_output_hairpins
    Boolean? also_create_excel
    File? supply_file_known
    File? supply_survey_file
    Boolean? report_complete_file
    Boolean? report_survey_current
    File? rfam_file_check
    File? mirbasemrd_file_produced
    File? file_mapped_reads
    String? specify_organism_obtained
    Boolean? print_ucsc_organisms
    Boolean? timestamp_of_run
    Boolean? sort_signature_sample
    Boolean? do_generate_pdfs
    Boolean? print_genomic_coordinates
    Boolean? stringent_when_assigning
  }
  command <<<
    make_html2_pl \
      ~{if defined(only_output_hairpins) then ("-v " +  '"' + only_output_hairpins + '"') else ""} \
      ~{if (also_create_excel) then "-c" else ""} \
      ~{if defined(supply_file_known) then ("-k " +  '"' + supply_file_known + '"') else ""} \
      ~{if defined(supply_survey_file) then ("-s " +  '"' + supply_survey_file + '"') else ""} \
      ~{if (report_complete_file) then "-e" else ""} \
      ~{if (report_survey_current) then "-g" else ""} \
      ~{if defined(rfam_file_check) then ("-r " +  '"' + rfam_file_check + '"') else ""} \
      ~{if defined(mirbasemrd_file_produced) then ("-q " +  '"' + mirbasemrd_file_produced + '"') else ""} \
      ~{if defined(file_mapped_reads) then ("-x " +  '"' + file_mapped_reads + '"') else ""} \
      ~{if defined(specify_organism_obtained) then ("-t " +  '"' + specify_organism_obtained + '"') else ""} \
      ~{if (print_ucsc_organisms) then "-u" else ""} \
      ~{if (timestamp_of_run) then "-y" else ""} \
      ~{if (sort_signature_sample) then "-o" else ""} \
      ~{if (do_generate_pdfs) then "-d" else ""} \
      ~{if (print_genomic_coordinates) then "-a" else ""} \
      ~{if (stringent_when_assigning) then "-l" else ""}
  >>>
  parameter_meta {
    only_output_hairpins: "only output hairpins with score above 2"
    also_create_excel: "also create overview in excel format."
    supply_file_known: "supply file with known miRNAs"
    supply_survey_file: "supply survey file if score cutoff is used to get information about how big is the confidence of resulting reads"
    report_complete_file: "report complete survey file"
    report_survey_current: "report survey for current score cutoff"
    rfam_file_check: "Rfam file to check for already reported small RNA sequences"
    mirbasemrd_file_produced: "miRBase.mrd file produced by quantifier module"
    file_mapped_reads: "signature.arf file with mapped reads to precursors"
    specify_organism_obtained: "specify the organism from which your sequencing data was obtained"
    print_ucsc_organisms: "print all available UCSC input organisms"
    timestamp_of_run: "timestamp of this run"
    sort_signature_sample: "sort signature by sample in pdf file, default is by beginning position"
    do_generate_pdfs: "do not generate pdfs"
    print_genomic_coordinates: "print genomic coordinates of mature sequence (still testing)"
    stringent_when_assigning: "be stringent when assigning miRNA-precursor connections like mmu-mir only is assigned to mmu-precursor"
  }
  output {
    File out_stdout = stdout()
  }
}