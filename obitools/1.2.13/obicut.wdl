version 1.0

task Obicut {
  input {
    String beginBegin
    String endEnd
    String sequenceSequence
    String definitionDefinition
    String identifierIdentifier
    File idIdList
    String aA
    String hasHasAttribute
    String predicPredicAt
    Boolean lL
    Boolean lL
    Boolean inverseInverseMatch
    File databaseDatabase
    File taxonomyTaxonomyDump
    String requireRequireRank
    String requiredRequired
    String ignoreIgnore
    String skipSkip
    String onlyOnly
    Boolean genbankGenbank
    Boolean emblEmbl
    Boolean skipSkipOnError
    Boolean fastFastA
    Boolean ecoEcoPcr
    Boolean rawRawFastA
    Boolean sangerSanger
    Boolean solexaSolexa
    Boolean ecoEcoPcrDb
    Boolean nucNuc
    Boolean protProt
    Boolean fastFastAOutput
    Boolean fastFastQOutput
    String ecoEcoPcrDbOutput
    Boolean uppercaseUppercase
  }
  command <<<
    obicut \
      ~{if defined(beginBegin) then ("--begin " +  '"' + beginBegin + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(definitionDefinition) then ("--definition " +  '"' + definitionDefinition + '"') else ""} \
      ~{if defined(identifierIdentifier) then ("--identifier " +  '"' + identifierIdentifier + '"') else ""} \
      ~{if defined(idIdList) then ("--id-list " +  '"' + idIdList + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(hasHasAttribute) then ("--has-attribute " +  '"' + hasHasAttribute + '"') else ""} \
      ~{if defined(predicPredicAt) then ("--predicat " +  '"' + predicPredicAt + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{true="-l" false="" lL} \
      ~{true="--inverse-match" false="" inverseInverseMatch} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDump) then ("--taxonomy-dump " +  '"' + taxonomyTaxonomyDump + '"') else ""} \
      ~{if defined(requireRequireRank) then ("--require-rank " +  '"' + requireRequireRank + '"') else ""} \
      ~{if defined(requiredRequired) then ("--required " +  '"' + requiredRequired + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(onlyOnly) then ("--only " +  '"' + onlyOnly + '"') else ""} \
      ~{true="--genbank" false="" genbankGenbank} \
      ~{true="--embl" false="" emblEmbl} \
      ~{true="--skip-on-error" false="" skipSkipOnError} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--ecopcr" false="" ecoEcoPcr} \
      ~{true="--raw-fasta" false="" rawRawFastA} \
      ~{true="--sanger" false="" sangerSanger} \
      ~{true="--solexa" false="" solexaSolexa} \
      ~{true="--ecopcrdb" false="" ecoEcoPcrDb} \
      ~{true="--nuc" false="" nucNuc} \
      ~{true="--prot" false="" protProt} \
      ~{true="--fasta-output" false="" fastFastAOutput} \
      ~{true="--fastq-output" false="" fastFastQOutput} \
      ~{if defined(ecoEcoPcrDbOutput) then ("--ecopcrdb-output " +  '"' + ecoEcoPcrDbOutput + '"') else ""} \
      ~{true="--uppercase" false="" uppercaseUppercase}
  >>>
}