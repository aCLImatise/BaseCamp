class: CommandLineTool
id: scHicQualityControl.cwl
inputs:
- id: in_schic_matrix_scool
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to\ninvestigate for QC. Needs to be in scool format\n(default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_outputs_cool
  doc: "scool matrix which contains only the filtered matrices\n(default: filtered_matrices.scool)"
  type: string?
  inputBinding:
    prefix: --outputScool
- id: in_minimum_read_coverage
  doc: "Remove all samples with a lower read coverage as this\nvalue. (default: 1000000)"
  type: long?
  inputBinding:
    prefix: --minimumReadCoverage
- id: in_minimum_density
  doc: "Remove all samples with a lower density as this value.\nThe density is given\
    \ by: number of non-zero\ninteractions / all possible interactions. (default:\n\
    0.001)"
  type: long?
  inputBinding:
    prefix: --minimumDensity
- id: in_maximum_region_to_consider
  doc: "To compute the density, consider only this genomic\ndistance around the diagonal.\
    \ (default: 30000000)"
  type: long?
  inputBinding:
    prefix: --maximumRegionToConsider
- id: in_chromosomes
  doc: "List of chromosomes that a cell needs to have to be\nnot deleted. However,\
    \ other chromosomes/contigs and\nscaffolds which may exist are not deleted. Use\n\
    scHicAdjustMatrix for this. (default: None)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_out_filename_density
  doc: "File name of the density histogram (default:\ndensity.png)"
  type: File?
  inputBinding:
    prefix: --outFileNameDensity
- id: in_out_filename_read_coverage
  doc: "File name of the read coverage (default:\nreadCoverage.png)"
  type: File?
  inputBinding:
    prefix: --outFileNameReadCoverage
- id: in_out_filename_qc_report
  doc: "File name of the quality report (default:\nqc_report.txt)"
  type: File?
  inputBinding:
    prefix: --outFileNameQCReport
- id: in_plot_only
  doc: "Do not create a new matrix, create only the plots.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --plotOnly
- id: in_run_chromosome_check
  doc: "Skip the data integrity check for the chromosomes.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --runChromosomeCheck
- id: in_dpi
  doc: 'The dpi of the plot. (default: 300)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename_density
  doc: "File name of the density histogram (default:\ndensity.png)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_density)
- id: out_out_filename_read_coverage
  doc: "File name of the read coverage (default:\nreadCoverage.png)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_read_coverage)
- id: out_out_filename_qc_report
  doc: "File name of the quality report (default:\nqc_report.txt)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_qc_report)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicQualityControl
