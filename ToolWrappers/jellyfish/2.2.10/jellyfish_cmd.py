from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jellyfish_Cmd_V0_1_0 = CommandToolBuilder(tool="jellyfish_cmd", base_command=["jellyfish", "cmd"], inputs=[ToolInput(tag="in_arg_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jellyfish_Cmd_V0_1_0().translate("wdl", allow_empty_container=True)

