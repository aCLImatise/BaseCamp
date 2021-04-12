from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Medaka_Tools_Fields__V0_1_0 = CommandToolBuilder(tool="medaka_tools_fields.", base_command=["medaka", "tools", "fields."], inputs=[ToolInput(tag="in_medaka", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tools", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Tools_Fields__V0_1_0().translate("wdl")

