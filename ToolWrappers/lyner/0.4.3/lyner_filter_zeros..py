from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Lyner_Filter_Zeros__V0_1_0 = CommandToolBuilder(tool="lyner_filter_zeros.", base_command=["lyner", "filter", "zeros."], inputs=[ToolInput(tag="in_lyne_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Filter_Zeros__V0_1_0().translate("wdl", allow_empty_container=True)

