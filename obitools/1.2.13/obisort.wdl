version 1.0

task Obisort {
  input {
    String keyKey
    Boolean reverseReverse
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
    obisort \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
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