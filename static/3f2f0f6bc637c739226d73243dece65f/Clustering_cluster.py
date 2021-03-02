from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Float

Clustering_Cluster_V0_1_0 = CommandToolBuilder(tool="Clustering_cluster", base_command=["Clustering", "cluster"], inputs=[ToolInput(tag="in_no_clust_out", input_type=Boolean(optional=True), prefix="--no-clust-out", doc=InputDocumentation(doc="Don't write out clustering")), ToolInput(tag="in_dist_file", input_type=File(optional=True), prefix="--dist-file", doc=InputDocumentation(doc="Sorted column distance matrix file")), ToolInput(tag="in_id_mapping", input_type=File(optional=True), prefix="--id-mapping", doc=InputDocumentation(doc="Id mapping file")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Clustering method to use (default=complete,\nothers={upgma,single})")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_psi", input_type=String(optional=True), prefix="--psi", doc=InputDocumentation(doc="Psi value (optional)")), ToolInput(tag="in_sample_mapping", input_type=File(optional=True), prefix="--sample-mapping", doc=InputDocumentation(doc="Sample mapping file")), ToolInput(tag="in_step", input_type=Float(optional=True), prefix="--step", doc=InputDocumentation(doc="Step value (default=.01 [1%])")), ToolInput(tag="in_tree_file", input_type=File(optional=True), prefix="--tree-file", doc=InputDocumentation(doc="Write out merges to file")), ToolInput(tag="in_clustering", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_arg", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file")), ToolOutput(tag="out_tree_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tree_file", type_hint=File()), doc=OutputDocumentation(doc="Write out merges to file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

