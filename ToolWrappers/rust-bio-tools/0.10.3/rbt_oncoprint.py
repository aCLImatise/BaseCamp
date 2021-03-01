from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rbt_Oncoprint_V0_1_0 = CommandToolBuilder(tool="rbt_oncoprint", base_command=["rbt", "oncoprint"], inputs=[ToolInput(tag="in_vep_annotation", input_type=Boolean(optional=True), prefix="--vep-annotation", doc=InputDocumentation(doc="Annotation field gets parsed as definded by VEP.")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Oncoprint_V0_1_0().translate("wdl", allow_empty_container=True)

