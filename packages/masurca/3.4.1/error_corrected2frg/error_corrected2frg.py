from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Error_Corrected2Frg_V0_1_0 = CommandToolBuilder(tool="error_corrected2frg", base_command=["error_corrected2frg"], inputs=[ToolInput(tag="in_length_min", input_type=Int(optional=True), prefix="--length-min", doc=InputDocumentation(doc="Minimum length of a read (64)")), ToolInput(tag="in_lib_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Error_Corrected2Frg_V0_1_0().translate("wdl", allow_empty_container=True)

