from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Epic_Cluster_V0_1_0 = CommandToolBuilder(tool="epic_cluster", base_command=["epic-cluster"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="Matrix to run clustering algorithm on.")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Where to store the cluster matrix.")), ToolInput(tag="in_bed_file", input_type=File(optional=True), prefix="--bedfile", doc=InputDocumentation(doc="Where to store the bed file with info about each\ncluster.")), ToolInput(tag="in_bigwig", input_type=Int(optional=True), prefix="--bigwig", doc=InputDocumentation(doc="Where to store the bigwig file that displays the\nnumber of enriched experiments in each bin.")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Which genome the data is from (hg19, mm10 etc.). Only\nneeded when --bigwig is used.")), ToolInput(tag="in_trunk_diff", input_type=Int(optional=True), prefix="--trunk-diff", doc=InputDocumentation(doc="The difference from the max an area needs to be not\nconsidered a trunk.")), ToolInput(tag="in_bin_size", input_type=Int(optional=True), prefix="--bin-size", doc=InputDocumentation(doc="The bin size used in the matrix file. Auto-inferred by\ndefault.")), ToolInput(tag="in_distance_allowed", input_type=Int(optional=True), prefix="--distance-allowed", doc=InputDocumentation(doc="The max distance allowed before two bins are\nconsidered to belong to a separate region. By default\nset to be the bin-size.")), ToolInput(tag="in_number_cores", input_type=Int(optional=True), prefix="--number-cores", doc=InputDocumentation(doc="Number of cpus to use. Can use at most one per\nchromosome. Default: 1.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epic_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

