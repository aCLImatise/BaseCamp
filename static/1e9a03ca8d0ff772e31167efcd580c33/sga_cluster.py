from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Sga_Cluster_V0_1_0 = CommandToolBuilder(tool="sga_cluster", base_command=["sga", "cluster"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write the clusters to FILE (default: clusters.txt)")), ToolInput(tag="in_min_cluster_size", input_type=Int(optional=True), prefix="--min-cluster-size", doc=InputDocumentation(doc="only write clusters with at least N reads (default: 2)")), ToolInput(tag="in_max_cluster_size", input_type=Int(optional=True), prefix="--max-cluster-size", doc=InputDocumentation(doc="abort the search if the cluster size exceeds N")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="require an overlap of at least N bases between reads (default: 45)")), ToolInput(tag="in_error_rate", input_type=Boolean(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="the maximum error rate allowed to consider two sequences aligned (default: exact matches only)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM worker threads to compute the overlaps (default: no threading)")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="limit cluster extension to NUM iterations")), ToolInput(tag="in_extend", input_type=File(optional=True), prefix="--extend", doc=InputDocumentation(doc="extend previously existing clusters in FILE")), ToolInput(tag="in_limit", input_type=File(optional=True), prefix="--limit", doc=InputDocumentation(doc="do not extend through the sequences in FILE")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

