#!/usr/bin/env cwl-runner

baseCommand:
- rnaQUAST.py
class: CommandLineTool
cwlVersion: v1.0
id: rnaquast.py
inputs:
- doc: File with unpaired reads [FASTQ or gzip-compressed]
  id: single_reads
  inputBinding:
    prefix: --single_reads
  type: string
- doc: Folder containing GMAP index for the reference genome
  id: gmap_index
  inputBinding:
    prefix: --gmap_index
  type: string
- doc: 'Directory to store all results [default: rnaQUAST_results/results_<datetime>]'
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
- doc: Run rnaQUAST on the test data from the test_data folder, output directory is
    rnaOUAST_test_output
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: Report detailed information, typically used only for detecting problems.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Maximum number of threads, default: min(number of CPUs / 2, 16)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Name(s) of assemblies that will be used in the reports
  id: labels
  inputBinding:
    prefix: --labels
  type:
    items: string
    type: array
- doc: Set if transcripts were assembled using strand- specific RNA-Seq data
  id: strand_specific
  inputBinding:
    prefix: --strand_specific
  type: boolean
- doc: 'Minimal alignment length, default: 50'
  id: min_alignment
  inputBinding:
    prefix: --min_alignment
  type: long
- doc: Do not draw plots (to speed up computation)
  id: no_plots
  inputBinding:
    prefix: --no_plots
  type: boolean
- doc: Run with BLAT alignment tool (http://hgwdev.cse.ucsc.edu/~kent/exe/) instead
    of GMAP
  id: blat
  inputBinding:
    prefix: --blat
  type: boolean
- doc: Run with GeneMarkS-T tool (http://topaz.gatech.edu/GeneMark/)
  id: gene_mark
  inputBinding:
    prefix: --gene_mark
  type: boolean
- doc: Run QUALITY ASSESSMENT FOR METATRANSCRIPTOME ASSEMBLIES
  id: meta
  inputBinding:
    prefix: --meta
  type: boolean
- doc: 'Lower threshold for x-assembled/covered/matched metrics, default: 0.5'
  id: lower_threshold
  inputBinding:
    prefix: --lower_threshold
  type: string
- doc: 'Upper threshold for x-assembled/covered/matched metrics, default: 0.95'
  id: upper_threshold
  inputBinding:
    prefix: --upper_threshold
  type: string
- doc: Use this option if the genome is prokaryotic
  id: prokaryote
  inputBinding:
    prefix: --prokaryote
  type: boolean
- doc: Use this option if your GTF file already contains genes records
  id: disable_infer_genes
  inputBinding:
    prefix: --disable_infer_genes
  type: boolean
- doc: Use this option if your GTF already contains transcripts records
  id: disable_infer_transcripts
  inputBinding:
    prefix: --disable_infer_transcripts
  type: boolean
- doc: Run with BUSCO tool (http://busco.ezlab.org/). Path to the BUSCO lineage data
    to be used (Eukaryota, Metazoa, Arthropoda, Vertebrata or Fungi)
  id: busco_lineage
  inputBinding:
    prefix: --busco_lineage
  type: string
