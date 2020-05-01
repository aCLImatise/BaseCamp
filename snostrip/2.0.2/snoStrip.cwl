#!/usr/bin/env cwl-runner

baseCommand:
- snoStrip.pl
class: CommandLineTool
cwlVersion: v1.0
id: snostrip.pl
inputs:
- doc: '|dir             Output directory where all retrieved information will be
    stored. [REQUIRED]'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: "|kingdom         Specify the kingdom which shall be analyzed. 'pro' ... Protostomia\
    \ 'deu' ... Deuterostomia 'fun' ... Fungi 'pla' ... Plants [REQUIRED]"
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '|genome          Genome source to search for potential snoRNAs.'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: "|name            Name of the organism: 'Genus epithet'."
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '|clan            Single snoRNA families to search for, e.g., -c CD_12 HACA_100  [analyze
    CD_12.fa and HACA_100.fa] -c CD_1* HACA*     [analyze CD_10.fa, CD_11.fa, etc.
    and ALL HACA families] '
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '|infernal        Incorporate infernal in the homology-based  search procedure.'
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: '|quiet           Suppress unnecessary output.'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '|force           Force to search for novel snoRNA candidates in every organism,
    even though there are already species-specific sequences in the current family.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '|sequences       Directory of targetRNAs.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '|alignments      Directory of targetRNA alignments.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '|profiles        Directory of targetRNA profiles.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
