class: CommandLineTool
id: funannotate_predict.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Genome multi-FASTA file (softmasked repeats)
  type: boolean
  inputBinding:
    prefix: --input
- id: out
  doc: Output folder name
  type: boolean
  inputBinding:
    prefix: --out
- id: species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: parameters
  doc: Ab intio parameters JSON file to use for gene predictors
  type: boolean
  inputBinding:
    prefix: --parameters
- id: isolate
  doc: Isolate name, e.g. Af293
  type: boolean
  inputBinding:
    prefix: --isolate
- id: strain
  doc: 'Strain name, e.g. FGSCA4           '
  type: boolean
  inputBinding:
    prefix: --strain
- id: name
  doc: 'Locus tag name (assigned by NCBI?). Default: FUN_'
  type: boolean
  inputBinding:
    prefix: --name
- id: numbering
  doc: 'Specify where gene numbering starts. Default: 1'
  type: boolean
  inputBinding:
    prefix: --numbering
- id: maker_gff
  doc: MAKER2 GFF file. Parse results directly to EVM.
  type: boolean
  inputBinding:
    prefix: --maker_gff
- id: pasa_gff
  doc: PASA generated gene models. filename:weight
  type: boolean
  inputBinding:
    prefix: --pasa_gff
- id: other_gff
  doc: Annotation pass-through to EVM. filename:weight
  type: boolean
  inputBinding:
    prefix: --other_gff
- id: rna_bam
  doc: 'RNA-seq mapped to genome to train Augustus/GeneMark-ET '
  type: boolean
  inputBinding:
    prefix: --rna_bam
- id: string_tie
  doc: StringTie GTF result
  type: boolean
  inputBinding:
    prefix: --stringtie
- id: weights
  doc: 'Ab-initio predictor and EVM weight. Example: augustus:2 or pasa:10'
  type: boolean
  inputBinding:
    prefix: --weights
- id: augustus_species
  doc: 'Augustus species config. Default: uses species name'
  type: boolean
  inputBinding:
    prefix: --augustus_species
- id: min_training_models
  doc: 'Minimum number of models to train Augustus. Default: 200'
  type: boolean
  inputBinding:
    prefix: --min_training_models
- id: genemark_mode
  doc: 'GeneMark mode. Default: ES [ES,ET]'
  type: boolean
  inputBinding:
    prefix: --genemark_mode
- id: genemark_mod
  doc: GeneMark ini mod file
  type: boolean
  inputBinding:
    prefix: --genemark_mod
- id: busco_seed_species
  doc: 'Augustus pre-trained species to start BUSCO. Default: anidulans'
  type: boolean
  inputBinding:
    prefix: --busco_seed_species
- id: optimize_augustus
  doc: Run 'optimze_augustus.pl' to refine training (long runtime)
  type: boolean
  inputBinding:
    prefix: --optimize_augustus
- id: busco_db
  doc: 'BUSCO models. Default: dikarya. `funannotate outgroups --show_buscos`'
  type: boolean
  inputBinding:
    prefix: --busco_db
- id: organism
  doc: 'Fungal-specific options. Default: fungus. [fungus,other]'
  type: boolean
  inputBinding:
    prefix: --organism
- id: ploidy
  doc: 'Ploidy of assembly. Default: 1'
  type: boolean
  inputBinding:
    prefix: --ploidy
- id: tbl2asn
  doc: 'Assembly parameters for tbl2asn. Default: "-l paired-ends"'
  type: boolean
  inputBinding:
    prefix: --tbl2asn
- id: database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean
  inputBinding:
    prefix: --database
- id: protein_evidence
  doc: 'Proteins to map to genome (prot1.fa prot2.fa uniprot.fa). Default: uniprot.fa'
  type: boolean
  inputBinding:
    prefix: --protein_evidence
- id: protein_alignments
  doc: Pre-computed protein alignments in GFF3 format
  type: boolean
  inputBinding:
    prefix: --protein_alignments
- id: transcript_evidence
  doc: 'mRNA/ESTs to align to genome (trans1.fa ests.fa trinity.fa). Default: none'
  type: boolean
  inputBinding:
    prefix: --transcript_evidence
- id: transcript_alignments
  doc: Pre-computed transcript alignments in GFF3 format
  type: boolean
  inputBinding:
    prefix: --transcript_alignments
- id: augustus_gff
  doc: Pre-computed AUGUSTUS GFF3 results (must use --stopCodonExcludedFromCDS=False)
  type: boolean
  inputBinding:
    prefix: --augustus_gff
- id: genemark_gtf
  doc: Pre-computed GeneMark GTF results
  type: boolean
  inputBinding:
    prefix: --genemark_gtf
- id: min_intron_len
  doc: 'Minimum intron length. Default: 10'
  type: boolean
  inputBinding:
    prefix: --min_intronlen
- id: max_intron_len
  doc: 'Maximum intron length. Default: 3000'
  type: boolean
  inputBinding:
    prefix: --max_intronlen
- id: soft_mask
  doc: 'Softmasked length threshold for GeneMark. Default: 2000'
  type: boolean
  inputBinding:
    prefix: --soft_mask
- id: min_prot_len
  doc: 'Minimum protein length. Default: 50'
  type: boolean
  inputBinding:
    prefix: --min_protlen
- id: repeats_2evm
  doc: Use repeats in EVM consensus model building
  type: boolean
  inputBinding:
    prefix: --repeats2evm
- id: repeat_filter
  doc: 'Repetitive gene model filtering. Default: overlap blast [overlap,blast,none]'
  type: boolean
  inputBinding:
    prefix: --repeat_filter
- id: keep_no_stops
  doc: Keep gene models without valid stops
  type: boolean
  inputBinding:
    prefix: --keep_no_stops
- id: keep_evm
  doc: Keep existing EVM results (for rerunning pipeline)
  type: boolean
  inputBinding:
    prefix: --keep_evm
- id: seq_center
  doc: 'Sequencing facilty for NCBI tbl file. Default: CFMR'
  type: boolean
  inputBinding:
    prefix: --SeqCenter
- id: seq_accession
  doc: 'Sequence accession number for NCBI tbl file. Default: 12345'
  type: boolean
  inputBinding:
    prefix: --SeqAccession
- id: force
  doc: Annotated unmasked genome
  type: boolean
  inputBinding:
    prefix: --force
- id: cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- predict
