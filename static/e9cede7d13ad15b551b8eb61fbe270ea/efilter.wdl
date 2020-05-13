version 1.0

task Efilter {
  input {
    Boolean queryQuery
    Boolean sortSort
    Boolean daysDays
    Boolean dateDateType
    Boolean minMinDate
    Boolean maxdateMaxdate
    Boolean fieldField
    Boolean pairsPairs
    Boolean spellSpell
    Boolean pubPub
    Boolean journalJournal
    Boolean releasedReleased
    Boolean countryCountry
    Boolean featureFeature
    Boolean locationLocation
    Boolean moleculeMolecule
    Boolean organismOrganism
    Boolean sourceSource
    Boolean statusStatus
    Boolean typeType
    Boolean classClass
    Boolean kindKind
    Boolean pathwayPathway
    Boolean labelLabel
  }
  command <<<
    efilter \
      ~{true="-query" false="" queryQuery} \
      ~{true="-sort" false="" sortSort} \
      ~{true="-days" false="" daysDays} \
      ~{true="-datetype" false="" dateDateType} \
      ~{true="-mindate" false="" minMinDate} \
      ~{true="-maxdate" false="" maxdateMaxdate} \
      ~{true="-field" false="" fieldField} \
      ~{true="-pairs" false="" pairsPairs} \
      ~{true="-spell" false="" spellSpell} \
      ~{true="-pub" false="" pubPub} \
      ~{true="-journal" false="" journalJournal} \
      ~{true="-released" false="" releasedReleased} \
      ~{true="-country" false="" countryCountry} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-location" false="" locationLocation} \
      ~{true="-molecule" false="" moleculeMolecule} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-source" false="" sourceSource} \
      ~{true="-status" false="" statusStatus} \
      ~{true="-type" false="" typeType} \
      ~{true="-class" false="" classClass} \
      ~{true="-kind" false="" kindKind} \
      ~{true="-pathway" false="" pathwayPathway} \
      ~{true="-label" false="" labelLabel}
  >>>
}