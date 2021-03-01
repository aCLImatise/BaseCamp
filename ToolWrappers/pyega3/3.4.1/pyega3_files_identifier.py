from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Pyega3_Files_Identifier_V0_1_0 = CommandToolBuilder(tool="pyega3_files_identifier", base_command=["pyega3", "files", "identifier"], inputs=[ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_sf", input_type=File(optional=True), prefix="-sf", doc=InputDocumentation(doc="")), ToolInput(tag="in_cf", input_type=File(optional=True), prefix="-cf", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_pye_ga_three", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pyega3:3.4.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyega3_Files_Identifier_V0_1_0().translate("wdl")

