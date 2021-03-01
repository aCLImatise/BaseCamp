from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mlocarna_Nnames_V0_1_0 = CommandToolBuilder(tool="mlocarna_nnames", base_command=["mlocarna_nnames"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Full documentation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mlocarna_Nnames_V0_1_0().translate("wdl", allow_empty_container=True)

