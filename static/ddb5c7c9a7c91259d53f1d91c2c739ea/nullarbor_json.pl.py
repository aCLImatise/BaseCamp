from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nullarbor_Json_Pl_V0_1_0 = CommandToolBuilder(tool="nullarbor_json.pl", base_command=["nullarbor-json.pl"], inputs=[ToolInput(tag="in_in_dir", input_type=Boolean(optional=True), prefix="--indir", doc=InputDocumentation(doc="Nullarbor result folder")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No output")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="More output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nullarbor_Json_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

