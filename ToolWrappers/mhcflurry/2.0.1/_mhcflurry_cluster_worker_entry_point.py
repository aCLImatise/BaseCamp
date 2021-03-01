from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

_Mhcflurry_Cluster_Worker_Entry_Point_V0_1_0 = CommandToolBuilder(tool="_mhcflurry_cluster_worker_entry_point", base_command=["_mhcflurry-cluster-worker-entry-point"], inputs=[ToolInput(tag="in_entry", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_point", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cluster", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_workers", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Mhcflurry_Cluster_Worker_Entry_Point_V0_1_0().translate("wdl")

