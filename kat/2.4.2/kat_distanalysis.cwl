#!/usr/bin/env cwl-runner

baseCommand:
- kat_distanalysis
class: CommandLineTool
cwlVersion: v1.0
id: kat_distanalysis
inputs:
- doc: The input should be either a KAT spectra-cn matrix file a KAT GCP matrix file
    or a KAT histogram file.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: If present then plots are sent to files starting with this prefix.
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: If present then plots are generated with this extension e.g. {png,svg}.
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: The number of copy numbers to consider in the analysis. Only applicable if
    input is a spectra-cn matrix file.
  id: cns
  inputBinding:
    prefix: --cns
  type: string
- doc: The maximum frequency cutoff point to consider. Analysis will be done up to
    this frequency.
  id: freq_cut_off
  inputBinding:
    prefix: --freq_cutoff
  type: string
- doc: Any new distribution that adds less to this number of distinct K-mers will
    not be added.
  id: min_elem
  inputBinding:
    prefix: --min_elem
  type: long
- doc: Plot best cumulative fit for all peaks.
  id: plot
  inputBinding:
    prefix: --plot
  type: boolean
- doc: The approximate kmer frequency for the homozygous peak. Allows us to calculate
    a more accurate genome size estimate.
  id: homozygous_peak
  inputBinding:
    prefix: --homozygous_peak
  type: string
- doc: If selected then we do not try to detect a heterozygous peak
  id: haploid
  inputBinding:
    prefix: --haploid
  type: boolean
- doc: Print additional information.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
