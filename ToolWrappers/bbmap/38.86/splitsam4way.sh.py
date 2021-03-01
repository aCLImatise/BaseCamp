from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Splitsam4Way_Sh_V0_1_0 = CommandToolBuilder(tool="splitsam4way.sh", base_command=["splitsam4way.sh"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_plus", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_minus", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_chimeric", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_unmapped", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitsam4Way_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

