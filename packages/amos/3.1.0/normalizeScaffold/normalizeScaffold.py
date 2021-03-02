from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Normalizescaffold_V0_1_0 = CommandToolBuilder(tool="normalizeScaffold", base_command=["normalizeScaffold"], inputs=[ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_just_normalize_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Just normalize the scaffolds eids listed in file")), ToolInput(tag="in_just_normalize_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Just normalize the scaffolds iids listed in file")), ToolInput(tag="in_just_normalize_eid", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Just normalize the specified scaffold eid")), ToolInput(tag="in_just_normalize_iid", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Just normalize the specified scaffold iid")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalizescaffold_V0_1_0().translate("wdl", allow_empty_container=True)

