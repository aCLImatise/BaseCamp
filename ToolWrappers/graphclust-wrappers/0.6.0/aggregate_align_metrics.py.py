from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Aggregate_Align_Metrics_Py_V0_1_0 = CommandToolBuilder(tool="aggregate_align_metrics.py", base_command=["aggregate_align_metrics.py"], inputs=[ToolInput(tag="in_exclude_spurious_structs", input_type=Boolean(optional=True), prefix="--exclude-spurious-structs", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aggregate_Align_Metrics_Py_V0_1_0().translate("wdl", allow_empty_container=True)

