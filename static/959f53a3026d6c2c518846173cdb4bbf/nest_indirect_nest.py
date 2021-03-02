from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nest_Indirect_Nest_V0_1_0 = CommandToolBuilder(tool="nest_indirect_nest", base_command=["nest_indirect", "nest"], inputs=[ToolInput(tag="in_nest_indirect", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nest_Indirect_Nest_V0_1_0().translate("wdl", allow_empty_container=True)

