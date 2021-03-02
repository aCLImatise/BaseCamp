from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crimson_Vep_V0_1_0 = CommandToolBuilder(tool="crimson_vep", base_command=["crimson", "vep"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crimson_Vep_V0_1_0().translate("wdl", allow_empty_container=True)

