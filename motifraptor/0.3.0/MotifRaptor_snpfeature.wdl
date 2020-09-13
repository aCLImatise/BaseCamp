version 1.0

task MotifRaptorSnpfeature {
  input {
    Directory? workdir
    String? cell_type
    File? snp_bed_files
  }
  command <<<
    MotifRaptor snpfeature \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(cell_type) then ("--cell_type " +  '"' + cell_type + '"') else ""} \
      ~{if defined(snp_bed_files) then ("--snp_bed_files " +  '"' + snp_bed_files + '"') else ""}
  >>>
  parameter_meta {
    workdir: "Working directory"
    cell_type: "Cell type or Tissue type ID"
    snp_bed_files: "SNP cell type bed file folder, usually from step1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}