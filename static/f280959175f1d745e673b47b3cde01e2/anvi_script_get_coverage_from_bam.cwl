class: CommandLineTool
id: anvi_script_get_coverage_from_bam.cwl
inputs:
- id: bam_file
  doc: Sorted and indexed BAM file to analyze.
  type: string
  inputBinding:
    prefix: --bam-file
- id: contig_name
  doc: The name of a single contig
  type: string
  inputBinding:
    prefix: --contig-name
- id: contigs_of_interest
  doc: Provide here a file where each line is a contig name.
  type: string
  inputBinding:
    prefix: --contigs-of-interest
- id: collection_txt
  doc: Provide a collection text file. The first column should be contig names and
    the second column should be the bin to which the contig belongs. If you have a
    collection from a profile database, you can export it in this format with anvi-export-collection.
  type: string
  inputBinding:
    prefix: --collection-txt
- id: method
  doc: 'If pos, each nucleotide position will be reported (valid for OPTION #1, #2,
    #3). If contig, report contains contig averages (valid for OPTION #2, #3). If
    bin, report contains bin averages (valid for OPTION #3).'
  type: string
  inputBinding:
    prefix: --method
- id: output
  doc: Output tab-delimited file path. Will overwrite existing files.
  type: string
  inputBinding:
    prefix: --output
- id: skip_contigs_check
  doc: Checking to see that your collection text or contigs of interest file has correct
    names can take a really long time if you have a large enough number of contigs.
    Use this flag to forego checking, and find out the hard way.
  type: boolean
  inputBinding:
    prefix: --skip-contigs-check
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-get-coverage-from-bam
