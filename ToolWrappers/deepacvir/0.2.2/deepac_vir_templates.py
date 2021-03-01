from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Vir_Templates_V0_1_0 = CommandToolBuilder(tool="deepac_vir_templates", base_command=["deepac-vir", "templates"], inputs=[ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_templates", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Templates_V0_1_0().translate("wdl")

