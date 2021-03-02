from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sweepfinder2_V0_1_0 = CommandToolBuilder(tool="SweepFinder2", base_command=["SweepFinder2"], inputs=[ToolInput(tag="in_to", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_find", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_get", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_frequency", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sweeps", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_spectrum", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sweepfinder2_V0_1_0().translate("wdl", allow_empty_container=True)

