version 1.0

task Efilter {
  input {
    Boolean? query
    Boolean? sort
    Boolean? days
    Boolean? date_type
    Boolean? min_date
    Boolean? maxdate
    Boolean? field
    Boolean? pairs
    Boolean? spell
    Boolean? pub
    Boolean? journal
    Boolean? released
    Boolean? country
    Boolean? feature
    Boolean? location
    Boolean? molecule
    Boolean? organism
    Boolean? source
    Boolean? status
    Boolean? type
    Boolean? class
    Boolean? kind
    Boolean? pathway
    Boolean? label
  }
  command <<<
    efilter \
      ~{true="-query" false="" query} \
      ~{true="-sort" false="" sort} \
      ~{true="-days" false="" days} \
      ~{true="-datetype" false="" date_type} \
      ~{true="-mindate" false="" min_date} \
      ~{true="-maxdate" false="" maxdate} \
      ~{true="-field" false="" field} \
      ~{true="-pairs" false="" pairs} \
      ~{true="-spell" false="" spell} \
      ~{true="-pub" false="" pub} \
      ~{true="-journal" false="" journal} \
      ~{true="-released" false="" released} \
      ~{true="-country" false="" country} \
      ~{true="-feature" false="" feature} \
      ~{true="-location" false="" location} \
      ~{true="-molecule" false="" molecule} \
      ~{true="-organism" false="" organism} \
      ~{true="-source" false="" source} \
      ~{true="-status" false="" status} \
      ~{true="-type" false="" type} \
      ~{true="-class" false="" class} \
      ~{true="-kind" false="" kind} \
      ~{true="-pathway" false="" pathway} \
      ~{true="-label" false="" label}
  >>>
  parameter_meta {
    query: "Query string"
    sort: "Result presentation order"
    days: "Number of days in the past"
    date_type: "Date field abbreviation"
    min_date: "Start of date range"
    maxdate: "End of date range"
    field: "Query words individually in field"
    pairs: "Query overlapping word pairs"
    spell: "Correct misspellings in query"
    pub: "abstract, clinical, english, free, historical, journal, medline, preprint, published, review, structured"
    journal: "pnas, \"j bacteriol\", ..."
    released: "last_week, last_month, last_year, prev_years"
    country: "usa:minnesota, united_kingdom, \"pacific ocean\", ..."
    feature: "gene, mrna, cds, mat_peptide, ..."
    location: "mitochondrion, chloroplast, plasmid, plastid"
    molecule: "genomic, mrna, trna, rrna, ncrna"
    organism: "animals, archaea, bacteria, eukaryotes, fungi, human, insects, mammals, plants, prokaryotes, protists, rodents, viruses"
    source: "genbank, insd, pdb, pir, refseq, swissprot, tpa"
    status: "alive"
    type: "coding, pseudo"
    class: "acceptor, donor, frameshift, indel, intron, missense, nonsense, synonymous"
    kind: "pathway"
    pathway: "reactome, wikipathways"
    label: "Alias for query step"
  }
}