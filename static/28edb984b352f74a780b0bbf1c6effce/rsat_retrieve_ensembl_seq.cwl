class: CommandLineTool
id: rsat_retrieve_ensembl_seq.cwl
inputs:
- id: in_org
  doc: "underscore between words (eg 'homo_sapiens')\nIf this option is not used,\
    \ the option -dbname must be used\ninstead.\n(type 'supported-organisms | grep\
    \ EnsEMBL' to obtain the list of supported\norganisms)"
  type: string?
  inputBinding:
    prefix: -org
- id: in_ensembl_host
  doc: address of ensembl database server (default is EBI server)
  type: boolean?
  inputBinding:
    prefix: -ensemblhost
- id: in_dbname
  doc: "of EnsEMBL database\n(alternative to organism)"
  type: string?
  inputBinding:
    prefix: -dbname
- id: in_db_version
  doc: 'version of ensembl database (example: 47)'
  type: boolean?
  inputBinding:
    prefix: -dbversion
- id: in_feat_type
  doc: "Feature type.\nSupported: cds,exon,gene,intron,mrna,transcript,utr\nDefaut:\
    \ mrna"
  type: boolean?
  inputBinding:
    prefix: -feattype
- id: in_type
  doc: "sequence type\nCurrently supported sequence types\nupstream (default)\ndownstream\n\
    feature"
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_utr
  doc: "Type(s) of UTR (untranslated region) to return.\nSupported: all | 5prime |\
    \ 3prime"
  type: long?
  inputBinding:
    prefix: -utr
- id: in_query_be_gene
  doc: "The query should be an EnsEMBL gene identifier (eg 'ENSG00000177799').\nMultiple\
    \ queries can be entered by reiteratively using the -q\noption."
  type: long?
  inputBinding:
    prefix: -q
- id: in_query_file_taken
  doc: "query file. The first word of each line is taken as a query.\nThis option\
    \ is incompatible with -q."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_all
  doc: return all genomic upstream/downstream regions
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_name_output_file
  doc: name of the output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_from
  doc: "#1 -to #2\nwhere #1 and #2 are numbers. #2 should be higher than #1.\nlimits\
    \ of the region to extract, relative to feattype start or end\n(=position 0).\
    \ Use negative values for upstream sequence.\nexample: -from -800 -to -1\nwill\
    \ extract the 800 bp upstream the feattype start or end.\n(this is the default"
  type: boolean?
  inputBinding:
    prefix: -from
- id: in_no_orf
  doc: "the upstream/downstream sequence can only contain non-coding sequence.\ni.e.\
    \ the -from values is modified if a predicted orf\nis encountered within its range.\n\
    The weaknesses of using this option are that\n- all predicted orf do not correspond\
    \ to real orf,\n- there is no a priori reason to exclude a regulatory site\nwhich\
    \ would overlap the upstream coding sequence."
  type: boolean?
  inputBinding:
    prefix: -noorf
- id: in_no_gene
  doc: upstream/downstream sequence can only contain non-transcribed sequence.
  type: string?
  inputBinding:
    prefix: -nogene
- id: in_mask_coding
  doc: all coding sequence is replaced by N in the retrieved sequence
  type: boolean?
  inputBinding:
    prefix: -maskcoding
- id: in_rm
  doc: "Use the repeat masked version of the genome.  Attention :\nrepeated regions\
    \ are annotated for some genomes only."
  type: boolean?
  inputBinding:
    prefix: -rm
- id: in_all_transcripts
  doc: "Get sequences for all transcripts of genes.\nUse -uniqseqs if you do motif\
    \ discovery afterwards"
  type: boolean?
  inputBinding:
    prefix: -alltranscripts
- id: in_uniq_seqs
  doc: With -alltranscripts, returns only non-redondant sequences
  type: boolean?
  inputBinding:
    prefix: -uniqseqs
- id: in_first_intron
  doc: With feattype intron, get only first intron sequence
  type: boolean?
  inputBinding:
    prefix: -firstintron
- id: in_noncoding
  doc: With feattype exon, get only non-coding (part of) exons
  type: boolean?
  inputBinding:
    prefix: -noncoding
- id: in_chrom
  doc: Chromosome name or number (to use with -left and -right)
  type: boolean?
  inputBinding:
    prefix: -chrom
- id: in_left
  doc: Left limit of sequence to retrieve
  type: boolean?
  inputBinding:
    prefix: -left
- id: in_right
  doc: Right limit of sequence to retrieve
  type: boolean?
  inputBinding:
    prefix: -right
- id: in_strand
  doc: 'of sequence to retrieve when using -left and -right. Values: 1, -1'
  type: long?
  inputBinding:
    prefix: -strand
- id: in_ft_file
  doc: file
  type: File?
  inputBinding:
    prefix: -ftfile
- id: in_ft_file_format
  doc: 'Feature file format. Supported: ft, gft'
  type: boolean?
  inputBinding:
    prefix: -ftfileformat
- id: in_ortho
  doc: Retrieve homologous sequences from EnsEMBL Compara databases
  type: boolean?
  inputBinding:
    prefix: -ortho
- id: in_ortho_type
  doc: 'Filter on homology type. (example: ortholog, ortholog_one2one)'
  type: long?
  inputBinding:
    prefix: -ortho_type
- id: in_homologs_table
  doc: "name\nPrints homology info to a tab delimited file"
  type: File?
  inputBinding:
    prefix: -homologs_table
- id: in_tax_on
  doc: 'Filter on taxonomic level (example: Mammalia)'
  type: string?
  inputBinding:
    prefix: -taxon
- id: in_header_org
  doc: "Type of organism name to use in the fasta header (scientific, common or none).\n\
    Default is scientific. Common name is only accessible with -ortho."
  type: boolean?
  inputBinding:
    prefix: -header_org
- id: in_label
  doc: "Information used as sequence label in the fasta header.\nSupported label types:\n\
    -label query\nuse as sequence label the identifier or name used as query.\n"
  type: string?
  inputBinding:
    prefix: -label
- id: in_genomics
  doc: sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: name of the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- retrieve-ensembl-seq
