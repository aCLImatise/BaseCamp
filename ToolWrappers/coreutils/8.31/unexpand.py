from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Unexpand_V0_1_0 = CommandToolBuilder(tool="unexpand", base_command=["unexpand"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="convert all blanks, instead of just initial blanks")), ToolInput(tag="in_first_only", input_type=Boolean(optional=True), prefix="--first-only", doc=InputDocumentation(doc="convert only leading sequences of blanks (overrides -a)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unexpand_V0_1_0().translate("wdl", allow_empty_container=True)

