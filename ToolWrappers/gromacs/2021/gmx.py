from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gmx_V0_1_0 = CommandToolBuilder(tool="gmx", base_command=["gmx"], inputs=[ToolInput(tag="in_nice", input_type=Boolean(optional=True), prefix="-nice", doc=InputDocumentation(doc="<int>              (19)\nSet the nicelevel (default depends on command)")), ToolInput(tag="in_commands", input_type=String(), position=0, doc=InputDocumentation(doc="List of available commands")), ToolInput(tag="in_selections", input_type=String(), position=1, doc=InputDocumentation(doc="Selection syntax and usage"))], outputs=[], container="quay.io/biocontainers/gromacs:2021--h3ddc34e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmx_V0_1_0().translate("wdl")

