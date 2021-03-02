from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sra_To_Solid_V0_1_0 = CommandToolBuilder(tool="sra_to_solid", base_command=["sra_to_solid"], inputs=[ToolInput(tag="in_input_dot_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sra_To_Solid_V0_1_0().translate("wdl", allow_empty_container=True)

