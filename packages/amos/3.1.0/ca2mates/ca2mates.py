from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ca2Mates_V0_1_0 = CommandToolBuilder(tool="ca2mates", base_command=["ca2mates"], inputs=[ToolInput(tag="in_asm_file", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=".asm file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ca2Mates_V0_1_0().translate("wdl", allow_empty_container=True)

