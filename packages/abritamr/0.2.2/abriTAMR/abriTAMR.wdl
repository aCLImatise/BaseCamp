version 1.0

task AbriTAMR {
  input {
    Boolean? mdu_qc
    File? qc
    File? positive_control
    Boolean? singularity
    File? singularity_path
    File? contigs
    File? amr_finder_output
    File? prefix
    Directory? workdir
    Directory? resources
    Boolean? species_detect
    Int? jobs
    Boolean? keep
    Boolean? v
  }
  command <<<
    abriTAMR \
      ~{if (mdu_qc) then "--mduqc" else ""} \
      ~{if defined(qc) then ("--qc " +  '"' + qc + '"') else ""} \
      ~{if defined(positive_control) then ("--positive_control " +  '"' + positive_control + '"') else ""} \
      ~{if (singularity) then "--Singularity" else ""} \
      ~{if defined(singularity_path) then ("--singularity_path " +  '"' + singularity_path + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(amr_finder_output) then ("--amrfinder_output " +  '"' + amr_finder_output + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if (species_detect) then "--species_detect" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abritamr:0.2.2--py_0"
  }
  parameter_meta {
    mdu_qc: "Set if running on MDU QC data. If set please provide\\nthe MDU QC .csv as further input and an additional\\noutput suitable for lims input will be provided.\\n(default: False)"
    qc: "Name of checked MDU QC file. (default:\\nmdu_qc_checked.csv)"
    positive_control: "Path to positive control sequence - must be set if\\nusing -m (default: )"
    singularity: "If using singularity container for AMRfinderplus\\n(default: False)"
    singularity_path: "Path to the singularity container for AMRfinderplus,\\nif empty will defualt to shub://phgenomics-\\nsingularity/amrfinderplus (default: )"
    contigs: "Tab-delimited file with sample ID as column 1 and path\\nto assemblies as column 2 OR path to a contig file\\n(used if only doing a single sample - should provide\\nvalue for -pfx). (default: )"
    amr_finder_output: "Tab-delimited file with sample ID as column 1 and path\\nto amr_finder output files as column 2 OR path to a\\namrfinder ouptu file (used if only doing a single\\nsample - should provide value for -pfx). (default: )"
    prefix: "If using abriTAMR on single file please provide a\\nprefix (default: )"
    workdir: "Working directory, default is current directory\\n(default: /)"
    resources: "Directory where templates are stored (default:\\n/usr/local/lib/python3.7/site-packages/abritamr)"
    species_detect: "Set if you would like to use point mutations.\\n(default: False)"
    jobs: "Number of AMR finder jobs to run in parallel.\\n(default: 16)"
    keep: "If you would like to keep intermediate files and\\nsnakemake log. Default is to remove (default: False)\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_amr_finder_output = "${in_amr_finder_output}"
  }
}