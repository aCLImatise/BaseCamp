from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Treecluster_Py_V0_1_0 = CommandToolBuilder(tool="TreeCluster.py", base_command=["TreeCluster.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input Tree File (default: stdin)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output File (default: stdout)")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Length Threshold (default: None)")), ToolInput(tag="in_support", input_type=String(optional=True), prefix="--support", doc=InputDocumentation(doc="Branch Support Threshold (default: -inf)")), ToolInput(tag="in_method", input_type=Int(optional=True), prefix="--method", doc=InputDocumentation(doc="Clustering Method (options: avg_clade, leaf_dist_avg,\nleaf_dist_max, leaf_dist_min, length, length_clade,\nmax, max_clade, med_clade, root_dist, single_linkage,\nsingle_linkage_cut, single_linkage_union, sum_branch,\nsum_branch_clade) (default: max_clade)")), ToolInput(tag="in_threshold_free", input_type=String(optional=True), prefix="--threshold_free", doc=InputDocumentation(doc="Threshold-Free Approach (options: argmax_clusters)\n(default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose Mode (default: False)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output File (default: stdout)"))], container="quay.io/biocontainers/treecluster:1.0.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treecluster_Py_V0_1_0().translate("wdl")

