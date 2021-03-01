from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustering_Cluster_To_Biom_V0_1_0 = CommandToolBuilder(tool="Clustering_cluster_to_biom", base_command=["Clustering", "cluster-to-biom"], inputs=[ToolInput(tag="in_cluster_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Cluster_To_Biom_V0_1_0().translate("wdl", allow_empty_container=True)

