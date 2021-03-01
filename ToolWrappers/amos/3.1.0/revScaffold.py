from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Revscaffold_V0_1_0 = CommandToolBuilder(tool="revScaffold", base_command=["revScaffold"], inputs=[ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_flip_scaffold_eid", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Flip scaffold eid")), ToolInput(tag="in_flip_scaffold_iid", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Flip scaffold iid")), ToolInput(tag="in_flip_scaffolds_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Flip the scaffolds eids listed in file")), ToolInput(tag="in_flip_scaffolds_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Flip the scaffolds iids listed in file")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Revscaffold_V0_1_0().translate("wdl", allow_empty_container=True)

