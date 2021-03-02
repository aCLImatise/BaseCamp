from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Nfe_Umbrella_Slice_V0_1_0 = CommandToolBuilder(tool="nfe_umbrella_slice", base_command=["nfe-umbrella-slice"], inputs=[ToolInput(tag="in_reset", input_type=Boolean(optional=True), prefix="--reset", doc=InputDocumentation(doc="(off by default)")), ToolInput(tag="in_translate", input_type=Boolean(optional=True), prefix="--translate", doc=InputDocumentation(doc="(0.0 by default)")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nfe_Umbrella_Slice_V0_1_0().translate("wdl", allow_empty_container=True)

