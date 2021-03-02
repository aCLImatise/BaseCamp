from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genomepy_Config_V0_1_0 = CommandToolBuilder(tool="genomepy_config", base_command=["genomepy", "config"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/genomepy:0.9.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomepy_Config_V0_1_0().translate("wdl")

