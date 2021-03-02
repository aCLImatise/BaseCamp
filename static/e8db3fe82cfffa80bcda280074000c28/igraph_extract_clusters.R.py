from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Igraph_Extract_Clusters_R_V0_1_0 = CommandToolBuilder(tool="igraph_extract_clusters.R", base_command=["igraph_extract_clusters.R"], inputs=[ToolInput(tag="in_input_i_graph_object", input_type=File(optional=True), prefix="--input-igraph-object", doc=InputDocumentation(doc="Path to the input igraph object in rds format.")), ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object where to add the cluster annotation extracted from the igraph objecti.")), ToolInput(tag="in_output_sce_object", input_type=File(optional=True), prefix="--output-sce-object", doc=InputDocumentation(doc="Path to the output SCE object in rds format with cluster annotation in $cluster."))], outputs=[ToolOutput(tag="out_output_sce_object", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sce_object", type_hint=File()), doc=OutputDocumentation(doc="Path to the output SCE object in rds format with cluster annotation in $cluster."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igraph_Extract_Clusters_R_V0_1_0().translate("wdl", allow_empty_container=True)

