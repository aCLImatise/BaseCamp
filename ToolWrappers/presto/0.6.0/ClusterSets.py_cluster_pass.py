from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustersets_Py_Cluster_Pass_V0_1_0 = CommandToolBuilder(tool="ClusterSets.py_cluster_pass", base_command=["ClusterSets.py", "cluster-pass"], inputs=[ToolInput(tag="in_cluster_sets_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustersets_Py_Cluster_Pass_V0_1_0().translate("wdl", allow_empty_container=True)

