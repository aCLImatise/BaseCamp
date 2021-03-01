from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jellyfish_Arg____V0_1_0 = CommandToolBuilder(tool="jellyfish_arg...", base_command=["jellyfish", "arg..."], inputs=[ToolInput(tag="in_jellyfish", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cmd", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arg_dot_dot_dot", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jellyfish_Arg____V0_1_0().translate("wdl", allow_empty_container=True)

