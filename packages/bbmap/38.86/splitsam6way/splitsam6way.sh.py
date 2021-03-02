from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Splitsam6Way_Sh_V0_1_0 = CommandToolBuilder(tool="splitsam6way.sh", base_command=["splitsam6way.sh"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_one_plus", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_one_minus", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_one_unmapped", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_two_plus", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_two_minus", input_type=Int(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_two_unmapped", input_type=Int(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitsam6Way_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

