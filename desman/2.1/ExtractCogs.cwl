class: CommandLineTool
id: ExtractCogs.py.cwl
inputs:
- id: blast_outfile
  doc: 'Output of rpsblast run, assumed to be in tabular format whith columns: qseqid
    sseqid evalue pident score qstart qend sstart send length slen. The contigs ids
    are assumed to be recoverable by removing the last underscore and the characters
    following it from the qseqid column.'
  type: string
  inputBinding:
    prefix: --blastoutfile
- id: sco_vs_threshold
  doc: Threshold covered in percent, default=50.0
  type: string
  inputBinding:
    prefix: --scovs-threshold
- id: p_ident_threshold
  doc: Threshold identity in percent, default=0.0
  type: string
  inputBinding:
    prefix: --pident-threshold
- id: cdd_cog_file
  doc: Supply a cdd to cog mapping file in a tsv format to take precedence over eutils
    fetching of name. Useful if running this script in parallel, since NCBI eutils
    has a limit on the number of requests per time unit you can make.
  type: string
  inputBinding:
    prefix: --cdd_cog_file
- id: gff_file
  doc: GFF file generated by e.g. prodigal only needed if the contig names are not
    recoverable from the blast output file.
  type: string
  inputBinding:
    prefix: --gfffile
outputs: []
cwlVersion: v1.1
baseCommand:
- ExtractCogs.py
