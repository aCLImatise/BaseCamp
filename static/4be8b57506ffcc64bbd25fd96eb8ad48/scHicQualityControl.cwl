class: CommandLineTool
id: scHicQualityControl.cwl
inputs:
- id: matrix
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to investigate for QC. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: outputs_cool
  doc: 'scool matrix which contains only the filtered matrices (default: filtered_matrices.scool)'
  type: string
  inputBinding:
    prefix: --outputScool
- id: minimum_read_coverage
  doc: 'Remove all samples with a lower read coverage as this value. (default: 1000000)'
  type: long
  inputBinding:
    prefix: --minimumReadCoverage
- id: minimum_density
  doc: 'Remove all samples with a lower read coverage as this value. (default: 0.001)'
  type: long
  inputBinding:
    prefix: --minimumDensity
- id: maximum_region_to_consider
  doc: 'To compute the density, consider only this genomic distance around the diagonal.
    (default: 30000000)'
  type: long
  inputBinding:
    prefix: --maximumRegionToConsider
- id: chromosomes
  doc: 'List of chromosomes that a cell needs to have to be not deleted. However,
    other chromosomes/contigs and scaffolds which may exist are not deleted. Use scHicAdjustMatrix
    for this. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: out_filename_density
  doc: 'File name of the density histogram (default: density.png)'
  type: string
  inputBinding:
    prefix: --outFileNameDensity
- id: out_filename_read_coverage
  doc: 'File name of the read coverage (default: readCoverage.png)'
  type: string
  inputBinding:
    prefix: --outFileNameReadCoverage
- id: out_filename_qc_report
  doc: 'File name of the quality report (default: qc_report.txt)'
  type: string
  inputBinding:
    prefix: --outFileNameQCReport
- id: plot_only
  doc: 'Do not create a new matrix, create only the plots. (default: False)'
  type: boolean
  inputBinding:
    prefix: --plotOnly
- id: dpi
  doc: 'The dpi of the plot. (default: 300)'
  type: string
  inputBinding:
    prefix: --dpi
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicQualityControl
