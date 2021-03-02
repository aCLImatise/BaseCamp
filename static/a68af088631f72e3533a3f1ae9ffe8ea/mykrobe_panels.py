from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mykrobe_Panels_V0_1_0 = CommandToolBuilder(tool="mykrobe_panels", base_command=["mykrobe", "panels"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="do not output warnings to stderr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mykrobe_Panels_V0_1_0().translate("wdl", allow_empty_container=True)

