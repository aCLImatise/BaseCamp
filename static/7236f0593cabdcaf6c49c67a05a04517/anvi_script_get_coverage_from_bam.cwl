class: CommandLineTool
id: anvi_script_get_coverage_from_bam.cwl
inputs:
- id: in_bam_file
  doc: Sorted and indexed BAM file to analyze.
  type: File?
  inputBinding:
    prefix: --bam-file
- id: in_contig_name
  doc: The name of a single contig
  type: string?
  inputBinding:
    prefix: --contig-name
- id: in_contigs_of_interest
  doc: Provide here a file where each line is a contig name.
  type: File?
  inputBinding:
    prefix: --contigs-of-interest
- id: in_collection_txt
  doc: "Provide a collection text file. The first column\nshould be contig names and\
    \ the second column should be\nthe bin to which the contig belongs. If you have\
    \ a\ncollection from a profile database, you can export it\nin this format with\
    \ anvi-export-collection."
  type: File?
  inputBinding:
    prefix: --collection-txt
- id: in_method
  doc: "If pos, each nucleotide position will be reported\n(valid for OPTION #1, #2,\
    \ #3). If contig, report\ncontains contig averages (valid for OPTION #2, #3).\
    \ If\nbin, report contains bin averages (valid for OPTION\n#3)."
  type: string?
  inputBinding:
    prefix: --method
- id: in_output
  doc: "Output tab-delimited file path. Will overwrite\nexisting files."
  type: File?
  inputBinding:
    prefix: --output
- id: in_skip_contigs_check
  doc: "Checking to see that your collection text or contigs\nof interest file has\
    \ correct names can take a really\nlong time if you have a large enough number\
    \ of\ncontigs. Use this flag to forego checking, and find\nout the hard way.\n"
  type: boolean?
  inputBinding:
    prefix: --skip-contigs-check
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output tab-delimited file path. Will overwrite\nexisting files."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-get-coverage-from-bam
