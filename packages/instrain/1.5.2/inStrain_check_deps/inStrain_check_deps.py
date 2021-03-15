from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Instrain_Check_Deps_V0_1_0 = CommandToolBuilder(tool="inStrain_check_deps", base_command=["inStrain", "check_deps"], inputs=[ToolInput(tag="in_in_strain", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/instrain:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Instrain_Check_Deps_V0_1_0().translate("wdl")

