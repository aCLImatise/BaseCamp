from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dextract_V0_1_0 = CommandToolBuilder(tool="dextract", base_command=["dextract"], inputs=[ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_v_faq", input_type=Boolean(optional=True), prefix="-vfaq", doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dextract_V0_1_0().translate("wdl", allow_empty_container=True)

