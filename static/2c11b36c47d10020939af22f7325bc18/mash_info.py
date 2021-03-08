from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mash_Info_V0_1_0 = CommandToolBuilder(tool="mash_info", base_command=["mash", "info"], inputs=[ToolInput(tag="in_only_show_info", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Only show header info. Do not list each sketch. Incompatible with -d,")), ToolInput(tag="in_dump_sketches_c", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Dump sketches in JSON format. Incompatible with -H, -t, and -c.")), ToolInput(tag="in_option", input_type=String(), position=0, doc=InputDocumentation(doc="Description (range) [default]"))], outputs=[], container="quay.io/biocontainers/mash:2.3--ha61e061_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mash_Info_V0_1_0().translate("wdl")

