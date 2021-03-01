from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

O_Cluster_Analysis_R_V0_1_0 = CommandToolBuilder(tool="o_cluster_analysis.R", base_command=["o-cluster-analysis.R"], inputs=[ToolInput(tag="in_permute", input_type=String(), position=0, doc=InputDocumentation(doc="Error in X11(width = 12, height = 10) : X11 module cannot be loaded"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Cluster_Analysis_R_V0_1_0().translate("wdl", allow_empty_container=True)

