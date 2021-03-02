from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Deepac_Live_Thresholds__V0_1_0 = CommandToolBuilder(tool="deepac_live_thresholds.", base_command=["deepac-live", "thresholds."], inputs=[ToolInput(tag="in_debug_tf", input_type=String(optional=True), prefix="--debug-tf", doc=InputDocumentation(doc="")), ToolInput(tag="in_debug_no_eager", input_type=Boolean(optional=True), prefix="--debug-no-eager", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_deep_ac_live", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepaclive:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Live_Thresholds__V0_1_0().translate("wdl")

