#!/usr/bin/env cwl-runner

baseCommand:
- index_blast_pairs.remove_overlapping_genes.pl
class: CommandLineTool
cwlVersion: v1.0
id: index_blast_pairs.remove_overlapping_genes.pl
