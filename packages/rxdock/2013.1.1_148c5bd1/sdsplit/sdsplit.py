from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sdsplit_V0_1_0 = CommandToolBuilder(tool="sdsplit", base_command=["sdsplit"], inputs=[ToolInput(tag="in_outputroot_root_name", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="<OutputRoot>  Root name for output files (default = tmp)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdsplit_V0_1_0().translate("wdl", allow_empty_container=True)

