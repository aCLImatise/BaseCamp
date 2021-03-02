from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Merge_Cutup_Clustering_Py_V0_1_0 = CommandToolBuilder(tool="merge_cutup_clustering.py", base_command=["merge_cutup_clustering.py"], inputs=[ToolInput(tag="in_cut_up_clustering_result", input_type=String(), position=0, doc=InputDocumentation(doc="Input cutup clustering result."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Cutup_Clustering_Py_V0_1_0().translate("wdl", allow_empty_container=True)

