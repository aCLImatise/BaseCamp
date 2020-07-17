class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dfamscan.pl.cwl
inputs:
- id: df_am_in_file
  doc: "Use this is you've already run nhmmscan, and just want to perfom dfamscan\
    \ filtering/sorting. The file must be the one produced by nhmmscan's --dfamtblout\
    \ flag. (Note: must be nhmmscan output, not nhmmer output)"
  type: string
  inputBinding:
    prefix: --dfam_infile
- id: df_am_outfile
  doc: Output file, also in dfamtblout format
  type: string
  inputBinding:
    prefix: --dfam_outfile
- id: annotation_thresh_slash_cut_tc
  doc: Default
  type: boolean
  inputBinding:
    prefix: --annotation_thresh/--cut_tc
- id: species
  doc: Currently allowed are "Other", "Homo sapiens",  "Mus Musculus", "Danio rerio",
    "Drosophila melanogaster", or "Caenorhabditis elegans"
  type: string
  inputBinding:
    prefix: --species
- id: sort_by_seq
  doc: Default
  type: boolean
  inputBinding:
    prefix: --sortby_seq
- id: min_cov_frac
  doc: "This is similar to the MaskLevel concept in  crossmatch.  A match is considered\
    \ non-redundant if at least (100-min_cov_frac)% of it's aligned bases are not\
    \ contained within the domain of any higher-scoring hit. Default: 0.75"
  type: string
  inputBinding:
    prefix: --min_cov_frac
outputs: []
cwlVersion: v1.1
baseCommand:
- dfamscan.pl
