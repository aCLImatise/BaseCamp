#!/usr/bin/env cwl-runner

baseCommand:
- profileGottcha.pl
class: CommandLineTool
cwlVersion: v1.0
id: profilegottcha.pl
inputs:
- doc: =/home/me/indir/genomeVitals2.dmp          --treeFile=/home/me/indir/speciesTreeGI2.dmp
  id: genome_vitals
  inputBinding:
    prefix: --genomeVitals
  type: boolean
- doc: =/home/me/indir/datasetXYZ_fixL30.stats.txt   --rank=all
  id: trim_stats
  inputBinding:
    prefix: --trimStats
  type: boolean
- doc: --outdir=/home/me/outdir
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: =/home/me/indir/genomeVitals2.dmp          --treeFile=/home/me/indir/speciesTreeGI2.dmp
  id: genome_vitals
  inputBinding:
    prefix: --genomeVitals
  type: boolean
- doc: =/home/me/indir/datasetXYZ_fixL30.stats.txt   --rank=all
  id: trim_stats
  inputBinding:
    prefix: --trimStats
  type: boolean
- doc: --outdir=/home/me/outdir
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
