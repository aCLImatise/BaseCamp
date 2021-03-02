from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Convertoverlap_V0_1_0 = CommandToolBuilder(tool="convertOverlap", base_command=["convertOverlap"], inputs=[ToolInput(tag="in_convert_ascii_binary", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="convert to ASCII, from a BINARY overlap file.")), ToolInput(tag="in_ovl", input_type=Boolean(optional=True), prefix="-ovl", doc=InputDocumentation(doc="convert to BINARY, from an ASCII overlap file.")), ToolInput(tag="in_obt", input_type=Boolean(optional=True), prefix="-obt", doc=InputDocumentation(doc="convert to BINARY, from an ASCII partial overlap file.")), ToolInput(tag="in_mer", input_type=Boolean(optional=True), prefix="-mer", doc=InputDocumentation(doc="convert to BINARY, from an ASCII mer overlap file.")), ToolInput(tag="in_read_overlaps_default", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="read overlaps from 'in'; default is stdin")), ToolInput(tag="in_write_overlaps_default", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="write overlaps to 'out'; default is stdout"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertoverlap_V0_1_0().translate("wdl", allow_empty_container=True)

