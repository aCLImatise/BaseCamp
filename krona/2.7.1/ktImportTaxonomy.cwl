#!/usr/bin/env cwl-runner

baseCommand:
- ktImportTaxonomy
class: CommandLineTool
cwlVersion: v1.0
id: ktimporttaxonomy
inputs:
- doc: Tab-delimited file with taxonomy IDs and (optionally) query IDs, magnitudes
    and scores. By default, query IDs, taxonomy IDs and scores will be taken from
    columns 1, 2 and 3, respectively (see -q, -t, -s, and -m). Lines beginning with
    "#" will be ignored. By default, separate datasets will be created for each input
    (see [-c]).
  id: taxonomy
  inputBinding:
    position: 0
  type: string
- doc: Optional file listing query IDs with magnitudes, separated by tabs. This can
    be used to account for read length or contig depth to obtain a more accurate representation
    of abundance. By default, query sequences without specified magnitudes will be
    assigned a magnitude of 1. Magnitude files for assemblies in ACE format can be
    created with ktGetContigMagnitudes.
  id: magnitudes
  inputBinding:
    position: 1
  type: string
- doc: A name to show in the list of datasets in the Krona chart (if multiple input
    files are present and [-c] is not specified). By default, the basename of the
    file will be used. _________
  id: name
  inputBinding:
    position: 2
  type: string
