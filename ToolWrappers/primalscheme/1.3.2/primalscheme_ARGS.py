from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Primalscheme_Args_V0_1_0 = CommandToolBuilder(tool="primalscheme_ARGS", base_command=["primalscheme", "ARGS"], inputs=[ToolInput(tag="in_primal_scheme", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/primalscheme:1.3.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primalscheme_Args_V0_1_0().translate("wdl")

