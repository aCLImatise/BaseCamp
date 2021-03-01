version 1.0

task ScHicQualityControl {
  input {
    String? schic_matrix_scool
    String? outputs_cool
    Int? minimum_read_coverage
    Int? minimum_density
    Int? maximum_region_to_consider
    Array[String] chromosomes
    File? out_filename_density
    File? out_filename_read_coverage
    File? out_filename_qc_report
    Boolean? plot_only
    Boolean? run_chromosome_check
    Int? dpi
    Int? threads
    String sch_i_c
    String var_14
  }
  command <<<
    scHicQualityControl \
      ~{sch_i_c} \
      ~{var_14} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(outputs_cool) then ("--outputScool " +  '"' + outputs_cool + '"') else ""} \
      ~{if defined(minimum_read_coverage) then ("--minimumReadCoverage " +  '"' + minimum_read_coverage + '"') else ""} \
      ~{if defined(minimum_density) then ("--minimumDensity " +  '"' + minimum_density + '"') else ""} \
      ~{if defined(maximum_region_to_consider) then ("--maximumRegionToConsider " +  '"' + maximum_region_to_consider + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(out_filename_density) then ("--outFileNameDensity " +  '"' + out_filename_density + '"') else ""} \
      ~{if defined(out_filename_read_coverage) then ("--outFileNameReadCoverage " +  '"' + out_filename_read_coverage + '"') else ""} \
      ~{if defined(out_filename_qc_report) then ("--outFileNameQCReport " +  '"' + out_filename_qc_report + '"') else ""} \
      ~{if (plot_only) then "--plotOnly" else ""} \
      ~{if (run_chromosome_check) then "--runChromosomeCheck" else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    outputs_cool: "scool matrix which contains only the filtered matrices\\n(default: filtered_matrices.scool)"
    minimum_read_coverage: "Remove all samples with a lower read coverage as this\\nvalue. (default: 1000000)"
    minimum_density: "Remove all samples with a lower density as this value.\\nThe density is given by: number of non-zero\\ninteractions / all possible interactions. (default:\\n0.001)"
    maximum_region_to_consider: "To compute the density, consider only this genomic\\ndistance around the diagonal. (default: 30000000)"
    chromosomes: "List of chromosomes that a cell needs to have to be\\nnot deleted. However, other chromosomes/contigs and\\nscaffolds which may exist are not deleted. Use\\nscHicAdjustMatrix for this. (default: None)"
    out_filename_density: "File name of the density histogram (default:\\ndensity.png)"
    out_filename_read_coverage: "File name of the read coverage (default:\\nreadCoverage.png)"
    out_filename_qc_report: "File name of the quality report (default:\\nqc_report.txt)"
    plot_only: "Do not create a new matrix, create only the plots.\\n(default: False)"
    run_chromosome_check: "Skip the data integrity check for the chromosomes.\\n(default: False)"
    dpi: "The dpi of the plot. (default: 300)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_14: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename_density = "${in_out_filename_density}"
    File out_out_filename_read_coverage = "${in_out_filename_read_coverage}"
    File out_out_filename_qc_report = "${in_out_filename_qc_report}"
  }
}