class: CommandLineTool
id: funannotate_predict.cwl
inputs:
- id: in_input
  doc: Genome multi-FASTA file (softmasked repeats)
  type: boolean
  inputBinding:
    prefix: --input
- id: in_out
  doc: Output folder name
  type: Directory
  inputBinding:
    prefix: --out
- id: in_species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: in_parameters
  doc: Ab intio parameters JSON file to use for gene predictors
  type: boolean
  inputBinding:
    prefix: --parameters
- id: in_isolate
  doc: Isolate name, e.g. Af293
  type: boolean
  inputBinding:
    prefix: --isolate
- id: in_strain
  doc: Strain name, e.g. FGSCA4
  type: boolean
  inputBinding:
    prefix: --strain
- id: in_name
  doc: 'Locus tag name (assigned by NCBI?). Default: FUN_'
  type: boolean
  inputBinding:
    prefix: --name
- id: in_numbering
  doc: 'Specify where gene numbering starts. Default: 1'
  type: boolean
  inputBinding:
    prefix: --numbering
- id: in_maker_gff
  doc: MAKER2 GFF file. Parse results directly to EVM.
  type: boolean
  inputBinding:
    prefix: --maker_gff
- id: in_pasa_gff
  doc: PASA generated gene models. filename:weight
  type: boolean
  inputBinding:
    prefix: --pasa_gff
- id: in_other_gff
  doc: Annotation pass-through to EVM. filename:weight
  type: boolean
  inputBinding:
    prefix: --other_gff
- id: in_rna_bam
  doc: RNA-seq mapped to genome to train Augustus/GeneMark-ET
  type: boolean
  inputBinding:
    prefix: --rna_bam
- id: in_string_tie
  doc: StringTie GTF result
  type: boolean
  inputBinding:
    prefix: --stringtie
- id: in_weights
  doc: 'Ab-initio predictor and EVM weight. Example: augustus:2 or pasa:10'
  type: boolean
  inputBinding:
    prefix: --weights
- id: in_augustus_species
  doc: 'Augustus species config. Default: uses species name'
  type: boolean
  inputBinding:
    prefix: --augustus_species
- id: in_min_training_models
  doc: 'Minimum number of models to train Augustus. Default: 200'
  type: boolean
  inputBinding:
    prefix: --min_training_models
- id: in_genemark_mode
  doc: 'GeneMark mode. Default: ES [ES,ET]'
  type: boolean
  inputBinding:
    prefix: --genemark_mode
- id: in_genemark_mod
  doc: GeneMark ini mod file
  type: boolean
  inputBinding:
    prefix: --genemark_mod
- id: in_busco_seed_species
  doc: 'Augustus pre-trained species to start BUSCO. Default: anidulans'
  type: boolean
  inputBinding:
    prefix: --busco_seed_species
- id: in_optimize_augustus
  doc: Run 'optimze_augustus.pl' to refine training (long runtime)
  type: boolean
  inputBinding:
    prefix: --optimize_augustus
- id: in_busco_db
  doc: 'BUSCO models. Default: dikarya. `funannotate outgroups --show_buscos`'
  type: boolean
  inputBinding:
    prefix: --busco_db
- id: in_organism
  doc: 'Fungal-specific options. Default: fungus. [fungus,other]'
  type: boolean
  inputBinding:
    prefix: --organism
- id: in_ploidy
  doc: 'Ploidy of assembly. Default: 1'
  type: boolean
  inputBinding:
    prefix: --ploidy
- id: in_tbl_two_asn
  doc: 'Assembly parameters for tbl2asn. Default: "-l paired-ends"'
  type: boolean
  inputBinding:
    prefix: --tbl2asn
- id: in_database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean
  inputBinding:
    prefix: --database
- id: in_protein_evidence
  doc: 'Proteins to map to genome (prot1.fa prot2.fa uniprot.fa). Default: uniprot.fa'
  type: boolean
  inputBinding:
    prefix: --protein_evidence
- id: in_protein_alignments
  doc: Pre-computed protein alignments in GFF3 format
  type: boolean
  inputBinding:
    prefix: --protein_alignments
- id: in_transcript_evidence
  doc: 'mRNA/ESTs to align to genome (trans1.fa ests.fa trinity.fa). Default: none'
  type: boolean
  inputBinding:
    prefix: --transcript_evidence
- id: in_transcript_alignments
  doc: Pre-computed transcript alignments in GFF3 format
  type: boolean
  inputBinding:
    prefix: --transcript_alignments
- id: in_augustus_gff
  doc: Pre-computed AUGUSTUS GFF3 results (must use --stopCodonExcludedFromCDS=False)
  type: boolean
  inputBinding:
    prefix: --augustus_gff
- id: in_genemark_gtf
  doc: Pre-computed GeneMark GTF results
  type: boolean
  inputBinding:
    prefix: --genemark_gtf
- id: in_min_intron_len
  doc: 'Minimum intron length. Default: 10'
  type: boolean
  inputBinding:
    prefix: --min_intronlen
- id: in_max_intron_len
  doc: 'Maximum intron length. Default: 3000'
  type: boolean
  inputBinding:
    prefix: --max_intronlen
- id: in_soft_mask
  doc: 'Softmasked length threshold for GeneMark. Default: 2000'
  type: boolean
  inputBinding:
    prefix: --soft_mask
- id: in_min_prot_len
  doc: 'Minimum protein length. Default: 50'
  type: boolean
  inputBinding:
    prefix: --min_protlen
- id: in_repeats_two_evm
  doc: Use repeats in EVM consensus model building
  type: boolean
  inputBinding:
    prefix: --repeats2evm
- id: in_repeat_filter
  doc: 'Repetitive gene model filtering. Default: overlap blast [overlap,blast,none]'
  type: boolean
  inputBinding:
    prefix: --repeat_filter
- id: in_keep_no_stops
  doc: Keep gene models without valid stops
  type: boolean
  inputBinding:
    prefix: --keep_no_stops
- id: in_keep_evm
  doc: Keep existing EVM results (for rerunning pipeline)
  type: boolean
  inputBinding:
    prefix: --keep_evm
- id: in_seq_center
  doc: 'Sequencing facilty for NCBI tbl file. Default: CFMR'
  type: boolean
  inputBinding:
    prefix: --SeqCenter
- id: in_seq_accession
  doc: 'Sequence accession number for NCBI tbl file. Default: 12345'
  type: boolean
  inputBinding:
    prefix: --SeqAccession
- id: in_force
  doc: Annotated unmasked genome
  type: boolean
  inputBinding:
    prefix: --force
- id: in_cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output folder name
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- funannotate
- predict
