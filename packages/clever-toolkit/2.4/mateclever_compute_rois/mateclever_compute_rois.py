from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Mateclever_Compute_Rois_V0_1_0 = CommandToolBuilder(tool="mateclever_compute_rois", base_command=["mateclever-compute-rois"], inputs=[ToolInput(tag="in_distance_deletion_breakpoints", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Distance from deletion breakpoints to be included (default:\n750).")), ToolInput(tag="in_maximum_deletion_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Maximum deletion length to be considered (default: none)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mateclever_Compute_Rois_V0_1_0().translate("wdl", allow_empty_container=True)

