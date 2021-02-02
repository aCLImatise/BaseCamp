version 1.0

task BattenbergCNToVCFpl {
  input {
    Boolean? sample_bam_mut
    Boolean? sample_bam_norm
    Boolean? reference
    Boolean? sample_sequencing_protocol_mut
    Boolean? sample_sequencing_protocol_norm
    Boolean? in_file
    File? out_file
    Boolean? reference_species
    Boolean? reference_assembly
    Boolean? sample_study_mut
    Boolean? sample_accession_mut
    Boolean? sample_accession_source_mut
    Boolean? seq_platform_mut
    Boolean? sample_study_norm
    Boolean? sample_accession_norm
    Boolean? sample_accession_source_norm
    Boolean? seq_platform_norm
    Boolean? man
    Boolean? version
  }
  command <<<
    battenberg_CN_to_VCF_pl \
      ~{if (sample_bam_mut) then "-sample-bam-mut" else ""} \
      ~{if (sample_bam_norm) then "-sample-bam-norm" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (sample_sequencing_protocol_mut) then "-sample-sequencing-protocol-mut" else ""} \
      ~{if (sample_sequencing_protocol_norm) then "-sample-sequencing-protocol-norm" else ""} \
      ~{if (in_file) then "-in-file" else ""} \
      ~{if (out_file) then "-out-file" else ""} \
      ~{if (reference_species) then "-reference-species" else ""} \
      ~{if (reference_assembly) then "-reference-assembly" else ""} \
      ~{if (sample_study_mut) then "-sample-study-mut" else ""} \
      ~{if (sample_accession_mut) then "-sample-accession-mut" else ""} \
      ~{if (sample_accession_source_mut) then "-sample-accession-source-mut" else ""} \
      ~{if (seq_platform_mut) then "-seq-platform-mut" else ""} \
      ~{if (sample_study_norm) then "-sample-study-norm" else ""} \
      ~{if (sample_accession_norm) then "-sample-accession-norm" else ""} \
      ~{if (sample_accession_source_norm) then "-sample-accession-source-norm" else ""} \
      ~{if (seq_platform_norm) then "-seq-platform-norm" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    sample_bam_mut: "-sbm  Mutant sample bam file."
    sample_bam_norm: "-sbw  Normal sample bam file."
    reference: "-r    Reference file"
    sample_sequencing_protocol_mut: "Sample Sequencing Protocol."
    sample_sequencing_protocol_norm: "Sample Sequencing Protocol."
    in_file: "-i    Input file. [STDIN]"
    out_file: "-o    Output file [STDOUT]."
    reference_species: "-rs   Reference species [BAM HEADER]."
    reference_assembly: "-ra   Reference assembly [BAM HEADER]."
    sample_study_mut: "-mss  Mut sample study."
    sample_accession_mut: "-msa  Mut sample accession [BAM HEADER]."
    sample_accession_source_mut: "-msc  Mut sample accession source."
    seq_platform_mut: "-msp  Mut sequencing platform. [BAM HEADER]"
    sample_study_norm: "-wss  Normal sample study."
    sample_accession_norm: "-wsa  Normal sample accession [BAM HEADER]."
    sample_accession_source_norm: "-wsc  Normal sample accession source."
    seq_platform_norm: "-wsp  Normal sequencing platform [BAM HEADER]."
    man: "-m   Full documentation."
    version: "Version information."
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}