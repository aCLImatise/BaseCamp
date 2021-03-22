from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coolbox_Load_Module_V0_1_0 = CommandToolBuilder(tool="coolbox_load_module", base_command=["coolbox", "load_module"], inputs=[ToolInput(tag="in_mod_str", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Load_Module_V0_1_0().translate("wdl")

