from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Cluster_V0_1_0 = CommandToolBuilder(tool="cluster", base_command=["cluster"], inputs=[ToolInput(tag="in_output_ancestree_input", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="Output AncesTree input file")), ToolInput(tag="in_clustering_input_filename", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="Clustering input filename")), ToolInput(tag="in_fwr", input_type=Int(optional=True), prefix="-FWR", doc=InputDocumentation(doc="Family-wise error rate")), ToolInput(tag="in_confidence_interval_used_clustering", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="Confidence interval used for clustering (default: 0.001)")), ToolInput(tag="in_confidence_interval_used_pooled", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Confidence interval used for pooled frequency matrix (default: 0.01)")), ToolInput(tag="in_relabel_mutation_clusters", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Relabel mutation clusters")), ToolInput(tag="in_var_lb", input_type=Int(optional=True), prefix="-varLB", doc=InputDocumentation(doc="Minimum number of variant reads (default: 3)\n"))], outputs=[], container="quay.io/biocontainers/machina:1.2--h176a8bc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster_V0_1_0().translate("wdl")

