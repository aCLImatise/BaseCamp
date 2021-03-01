from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fermi2_Sub_V0_1_0 = CommandToolBuilder(tool="fermi2_sub", base_command=["fermi2", "sub"], inputs=[ToolInput(tag="in_cs", input_type=Boolean(optional=True), prefix="-cs", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Sub_V0_1_0().translate("wdl", allow_empty_container=True)

