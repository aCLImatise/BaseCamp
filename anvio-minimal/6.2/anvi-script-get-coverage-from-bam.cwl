#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-get-coverage-from-bam
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-get-coverage-from-bam
inputs:
- doc: Sorted and indexed BAM file to analyze.
  id: bam_file
  inputBinding:
    prefix: --bam-file
  type: string
- doc: The name of a single contig
  id: contig_name
  inputBinding:
    prefix: --contig-name
  type: string
- doc: Provide here a file where each line is a contig name.
  id: contigs_of_interest
  inputBinding:
    prefix: --contigs-of-interest
  type: string
- doc: Provide a collection text file. The first column should be contig names and
    the second column should be the bin to which the contig belongs. If you have a
    collection from a profile database, you can export it in this format with anvi-export-collection.
  id: collection_txt
  inputBinding:
    prefix: --collection-txt
  type: string
- doc: 'If pos, each nucleotide position will be reported (valid for OPTION #1, #2,
    #3). If contig, report contains contig averages (valid for OPTION #2, #3). If
    bin, report contains bin averages (valid for OPTION #3).'
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: Output tab-delimited file path. Will overwrite existing files.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Checking to see that your collection text or contigs of interest file has correct
    names can take a really long time if you have a large enough number of contigs.
    Use this flag to forego checking, and find out the hard way.
  id: skip_contigs_check
  inputBinding:
    prefix: --skip-contigs-check
  type: boolean
