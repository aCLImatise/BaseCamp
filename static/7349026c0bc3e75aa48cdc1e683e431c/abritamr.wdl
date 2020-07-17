version 1.0

task Abritamr {
  input {
    Boolean? mdu_qc
    String? qc
    String? positive_control
    Boolean? singularity
    String? singularity_path
    String? contigs
    String? amr_finder_output
    String? workdir
    String? resources
    String? drug_classes
    String? jobs
    Boolean? keep
  }
  command <<<
    abritamr \
      ~{true="--mduqc" false="" mdu_qc} \
      ~{if defined(qc) then ("--qc " +  '"' + qc + '"') else ""} \
      ~{if defined(positive_control) then ("--positive_control " +  '"' + positive_control + '"') else ""} \
      ~{true="--Singularity" false="" singularity} \
      ~{if defined(singularity_path) then ("--singularity_path " +  '"' + singularity_path + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(amr_finder_output) then ("--amrfinder_output " +  '"' + amr_finder_output + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if defined(drug_classes) then ("--drug_classes " +  '"' + drug_classes + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{true="--keep" false="" keep}
  >>>
  parameter_meta {
    mdu_qc: "Set if running on MDU QC data. If set please provide the MDU QC .csv as further input and an additional output suitable for lims input will be provided. (default: False)"
    qc: "Name of checked MDU QC file. (default: mdu_qc_checked.csv)"
    positive_control: "Path to positive control sequence - must be set if using -m (default: )"
    singularity: "If using singularity container for AMRfinderplus (default: False)"
    singularity_path: "Path to the singularity container for AMRfinderplus, if empty will defualt to shub://phgenomics- singularity/amrfinderplus (default: )"
    contigs: "Tab-delimited file with sample ID as column 1 and path to assemblies as column 2 (default: )"
    amr_finder_output: "Tab-delimited file with sample ID as column 1 and path to amr_finder output files as column 2 (default: )"
    workdir: "Working directory, default is current directory (default: /tmp/tmplaxi10h4)"
    resources: "Directory where templates are stored (default: /tmp/tmplaxi10h4/lib/python3.6/site-packages/abritamr)"
    drug_classes: "Path to file (default: /tmp/tmplaxi10h4/lib/python3.6/site- packages/abritamr/db/refgenes.csv)"
    jobs: "Number of AMR finder jobs to run in parallel. (default: 16)"
    keep: "If you would like to keep intermediate files and snakemake log. Default is to remove (default: False)"
  }
}