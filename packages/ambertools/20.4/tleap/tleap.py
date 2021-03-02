from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tleap_V0_1_0 = CommandToolBuilder(tool="tleap", base_command=["tleap"], inputs=[ToolInput(tag="in_ignore_leaprc_startup", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Ignore leaprc startup file.")), ToolInput(tag="in_add_search_path", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc="Add {dir} to search path.")), ToolInput(tag="in_source_", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Source {file}."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tleap_V0_1_0().translate("wdl", allow_empty_container=True)

