from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Lyner_Cluster_V0_1_0 = CommandToolBuilder(tool="lyner_cluster", base_command=["lyner", "cluster"], inputs=[ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="--method", doc=InputDocumentation(doc="[dbscan|k_means|mean_shift]")), ToolInput(tag="in_num_clusters", input_type=Int(optional=True), prefix="--num-clusters", doc=InputDocumentation(doc="The exact number of clusters to build."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

