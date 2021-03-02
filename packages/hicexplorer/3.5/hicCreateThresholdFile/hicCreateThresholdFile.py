from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hiccreatethresholdfile_V0_1_0 = CommandToolBuilder(tool="hicCreateThresholdFile", base_command=["hicCreateThresholdFile"], inputs=[ToolInput(tag="in_range", input_type=String(optional=True), prefix="--range", doc=InputDocumentation(doc="")), ToolInput(tag="in_threshold_value", input_type=String(optional=True), prefix="--thresholdValue", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiccreatethresholdfile_V0_1_0().translate("wdl", allow_empty_container=True)

