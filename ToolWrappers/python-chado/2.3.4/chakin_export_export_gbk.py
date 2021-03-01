from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chakin_Export_Export_Gbk_V0_1_0 = CommandToolBuilder(tool="chakin_export_export_gbk", base_command=["chakin", "export", "export_gbk"], inputs=[ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Export_Export_Gbk_V0_1_0().translate("wdl")

