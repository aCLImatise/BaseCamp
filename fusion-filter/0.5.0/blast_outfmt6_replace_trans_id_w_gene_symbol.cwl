#!/usr/bin/env cwl-runner

baseCommand:
- blast_outfmt6_replace_trans_id_w_gene_symbol.pl
class: CommandLineTool
cwlVersion: v1.0
id: blast_outfmt6_replace_trans_id_w_gene_symbol.pl
