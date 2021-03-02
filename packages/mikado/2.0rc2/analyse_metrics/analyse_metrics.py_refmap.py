from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Analyse_Metrics_Py_Refmap_V0_1_0 = CommandToolBuilder(tool="analyse_metrics.py_refmap", base_command=["analyse_metrics.py", "refmap"], inputs=[ToolInput(tag="in_analyse_metrics_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_metrics", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_map", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyse_Metrics_Py_Refmap_V0_1_0().translate("wdl", allow_empty_container=True)

