from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Lyner_Cluster_Agglomerative_V0_1_0 = CommandToolBuilder(tool="lyner_cluster_agglomerative", base_command=["lyner", "cluster-agglomerative"], inputs=[ToolInput(tag="in_by", input_type=String(optional=True), prefix="--by", doc=InputDocumentation(doc="Any comma separated combination of: 'trend',\n'mean', 'median', 'mad', 'var', 'ontology'.\nOrder is relevant.")), ToolInput(tag="in_min_n_clusters", input_type=Int(optional=True), prefix="--min-nclusters", doc=InputDocumentation(doc="The minimum number of clusters to build. NOTE:\nThis option is mutually exclusive with:\n[nclusters].")), ToolInput(tag="in_max_n_clusters", input_type=Int(optional=True), prefix="--max-nclusters", doc=InputDocumentation(doc="The maximum number of clusters to build. NOTE:\nThis option is mutually exclusive with:\n[nclusters].")), ToolInput(tag="in_n_clusters", input_type=Int(optional=True), prefix="--nclusters", doc=InputDocumentation(doc="The exact number of clusters to build. NOTE:\nThis option is mutually exclusive with:\n[min_nclusters, max_nclusters]."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Cluster_Agglomerative_V0_1_0().translate("wdl", allow_empty_container=True)

