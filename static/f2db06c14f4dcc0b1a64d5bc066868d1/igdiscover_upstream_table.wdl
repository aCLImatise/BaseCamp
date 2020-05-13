version 1.0

task IgdiscoverUpstreamTable {
  input {
    Boolean profileProfile
    String? cloCloNoQuery
    String? cloCloNoTypes
    String? clusterClusterPlot
    String? commonCommonV
    String? configConfig
    String? countCount
    String? dbDbDiff
    String? dendrogramDendrogram
    String? deDeReplicate
    String? discoverDiscover
    String? discoverDiscoverJd
    String? errorErrorPlot
    String? filterFilter
    String? germlineGermlineFilter
    String? groupGroup
    String? haplotypeHaplotype
    String? iIGbLast
    String? inInIt
    String? mergeMerge
    String? multiMultiDiscover
    String? plotPlotAlleles
    String? renameRename
    String? runRun
    String? unionUnion
    String? upstreamUpstream
  }
  command <<<
    igdiscover upstream table \
      ~{cloCloNoQuery} \
      ~{true="--profile" false="" profileProfile} \
      ~{cloCloNoTypes} \
      ~{clusterClusterPlot} \
      ~{commonCommonV} \
      ~{configConfig} \
      ~{countCount} \
      ~{dbDbDiff} \
      ~{dendrogramDendrogram} \
      ~{deDeReplicate} \
      ~{discoverDiscover} \
      ~{discoverDiscoverJd} \
      ~{errorErrorPlot} \
      ~{filterFilter} \
      ~{germlineGermlineFilter} \
      ~{groupGroup} \
      ~{haplotypeHaplotype} \
      ~{iIGbLast} \
      ~{inInIt} \
      ~{mergeMerge} \
      ~{multiMultiDiscover} \
      ~{plotPlotAlleles} \
      ~{renameRename} \
      ~{runRun} \
      ~{unionUnion} \
      ~{upstreamUpstream}
  >>>
}