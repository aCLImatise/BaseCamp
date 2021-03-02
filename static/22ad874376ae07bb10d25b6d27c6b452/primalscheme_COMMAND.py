from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Primalscheme_Command_V0_1_0 = CommandToolBuilder(tool="primalscheme_COMMAND", base_command=["primalscheme", "COMMAND"], inputs=[ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/primalscheme:1.3.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primalscheme_Command_V0_1_0().translate("wdl")

