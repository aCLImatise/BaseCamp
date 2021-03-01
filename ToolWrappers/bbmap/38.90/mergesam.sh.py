from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mergesam_Sh_V0_1_0 = CommandToolBuilder(tool="mergesam.sh", base_command=["mergesam.sh"], inputs=[ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergesam_Sh_V0_1_0().translate("wdl")

