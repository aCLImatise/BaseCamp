version 1.0

task _twofeat {
  input {
    Boolean aAType
    Boolean bBType
    Boolean minMinRange
    Boolean maxMaxRange
    String rRFormat
    Boolean aASource
    Boolean aASense
    Boolean amAmInScore
    Boolean aAMaxScore
    Boolean aATag
    Boolean aAValue
    Boolean bBSource
    Boolean bBSense
    Boolean bmBmInScore
    Boolean bmaxBmaxScore
    Boolean bBTag
    Boolean bBValue
    Boolean overlapOverlap
    Boolean rangeRangeType
    Boolean senseSense
    Boolean orderOrder
    Boolean twoTwoOut
  }
  command <<<
    _twofeat \
      ~{true="-atype" false="" aAType} \
      ~{true="-btype" false="" bBType} \
      ~{true="-minrange" false="" minMinRange} \
      ~{true="-maxrange" false="" maxMaxRange} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""} \
      ~{true="-asource" false="" aASource} \
      ~{true="-asense" false="" aASense} \
      ~{true="-aminscore" false="" amAmInScore} \
      ~{true="-amaxscore" false="" aAMaxScore} \
      ~{true="-atag" false="" aATag} \
      ~{true="-avalue" false="" aAValue} \
      ~{true="-bsource" false="" bBSource} \
      ~{true="-bsense" false="" bBSense} \
      ~{true="-bminscore" false="" bmBmInScore} \
      ~{true="-bmaxscore" false="" bmaxBmaxScore} \
      ~{true="-btag" false="" bBTag} \
      ~{true="-bvalue" false="" bBValue} \
      ~{true="-overlap" false="" overlapOverlap} \
      ~{true="-rangetype" false="" rangeRangeType} \
      ~{true="-sense" false="" senseSense} \
      ~{true="-order" false="" orderOrder} \
      ~{true="-twoout" false="" twoTwoOut}
  >>>
}