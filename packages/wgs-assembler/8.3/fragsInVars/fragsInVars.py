from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fragsinvars_V0_1_0 = CommandToolBuilder(tool="fragsInVars", base_command=["fragsInVars"], inputs=[ToolInput(tag="in_var_scf", input_type=String(optional=True), prefix="-varscf", doc=InputDocumentation(doc="")), ToolInput(tag="in_frg_scf", input_type=String(optional=True), prefix="-frgscf", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fragsinvars_V0_1_0().translate("wdl", allow_empty_container=True)

