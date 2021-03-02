from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Stringiphy_V0_1_0 = CommandToolBuilder(tool="stringiphy", base_command=["stringiphy"], inputs=[ToolInput(tag="in_exons_dot_gff", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stringiphy_V0_1_0().translate("wdl", allow_empty_container=True)

