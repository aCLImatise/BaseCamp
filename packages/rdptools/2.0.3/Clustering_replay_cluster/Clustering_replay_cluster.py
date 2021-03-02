from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustering_Replay_Cluster_V0_1_0 = CommandToolBuilder(tool="Clustering_replay_cluster", base_command=["Clustering", "replay-cluster"], inputs=[ToolInput(tag="in_cluster_replay", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_mapping", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_mapping", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_merges_file", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_cluster_out", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Replay_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

