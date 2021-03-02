from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array

Edalign_V0_1_0 = CommandToolBuilder(tool="edalign", base_command=["edalign"], inputs=[ToolInput(tag="in_mandatory_path_first", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Mandatory, path to first input file")), ToolInput(tag="in_mandatory_path_second", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="Mandatory, path to second input file")), ToolInput(tag="in_ref", input_type=Array(t=File(), optional=True), prefix="-ref", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edalign_V0_1_0().translate("wdl")

