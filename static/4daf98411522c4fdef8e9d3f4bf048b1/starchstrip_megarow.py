from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Starchstrip_Megarow_V0_1_0 = CommandToolBuilder(tool="starchstrip_megarow", base_command=["starchstrip-megarow"], inputs=[ToolInput(tag="in_include", input_type=File(optional=True), prefix="--include", doc=InputDocumentation(doc="Include specified chromosomes from <starch-file>.")), ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Exclude specified chromosomes from <starch-file>.")), ToolInput(tag="in_starch_strip", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starchstrip_Megarow_V0_1_0().translate("wdl", allow_empty_container=True)

