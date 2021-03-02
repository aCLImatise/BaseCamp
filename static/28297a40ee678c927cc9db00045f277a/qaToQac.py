from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qatoqac_V0_1_0 = CommandToolBuilder(tool="qaToQac", base_command=["qaToQac"], inputs=[ToolInput(tag="in_in_dot_qa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qatoqac_V0_1_0().translate("wdl", allow_empty_container=True)

