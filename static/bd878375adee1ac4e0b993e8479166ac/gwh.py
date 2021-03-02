from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gwh_V0_1_0 = CommandToolBuilder(tool="gwh", base_command=["gwh"], inputs=[ToolInput(tag="in_unit", input_type=String(), position=0, doc=InputDocumentation(doc="1 Error on OPEN: prmtop"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gwh_V0_1_0().translate("wdl", allow_empty_container=True)

