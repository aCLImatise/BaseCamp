from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Vcfleftalign_V0_1_0 = CommandToolBuilder(tool="vcfleftalign", base_command=["vcfleftalign"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Use this reference as a basis for realignment.")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Use a window of this many bp when left aligning (150).")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfleftalign_V0_1_0().translate("wdl", allow_empty_container=True)

