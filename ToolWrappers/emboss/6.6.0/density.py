from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Density_V0_1_0 = CommandToolBuilder(tool="density", base_command=["density"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [100] Window length (Integer 1 or more)")), ToolInput(tag="in_display", input_type=Boolean(optional=True), prefix="-display", doc=InputDocumentation(doc="menu       [none] Select graph type (Values: D (Dual -\ngraphic showing individual bases); Q (Quad -\nAT vs GC graphic); none (none))"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Density_V0_1_0().translate("wdl", allow_empty_container=True)

