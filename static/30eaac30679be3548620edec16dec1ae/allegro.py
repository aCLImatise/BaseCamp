from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Allegro_V0_1_0 = CommandToolBuilder(tool="allegro", base_command=["allegro"], inputs=[ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_options_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Allegro_V0_1_0().translate("wdl", allow_empty_container=True)

