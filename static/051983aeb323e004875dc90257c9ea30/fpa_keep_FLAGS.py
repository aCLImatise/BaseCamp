from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fpa_Keep_Flags_V0_1_0 = CommandToolBuilder(tool="fpa_keep_FLAGS", base_command=["fpa", "keep", "FLAGS"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="")), ToolInput(tag="in_fpa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpa_Keep_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

