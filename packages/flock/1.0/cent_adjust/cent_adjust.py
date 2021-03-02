from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cent_Adjust_V0_1_0 = CommandToolBuilder(tool="cent_adjust", base_command=["cent_adjust"], inputs=[ToolInput(tag="in_input_center", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_data_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cent_Adjust_V0_1_0().translate("wdl", allow_empty_container=True)

