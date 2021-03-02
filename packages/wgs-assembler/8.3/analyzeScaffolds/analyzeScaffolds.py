from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Analyzescaffolds_V0_1_0 = CommandToolBuilder(tool="analyzeScaffolds", base_command=["analyzeScaffolds"], inputs=[ToolInput(tag="in_mandatory_path_gkpstore", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="mandatory path to the gkpStore")), ToolInput(tag="in_version_mandatory_path", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="version     mandatory path to the tigStore and version")), ToolInput(tag="in_version_optional_path", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="version   optional path to a checkpoint and version")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyzescaffolds_V0_1_0().translate("wdl", allow_empty_container=True)

