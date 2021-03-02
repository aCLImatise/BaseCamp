from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Compare_V0_1_0 = CommandToolBuilder(tool="Compare", base_command=["Compare"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc=": bam file")), ToolInput(tag="in_list", input_type=String(optional=True), prefix="--list", doc=InputDocumentation(doc=": list of regions (optional)")), ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc=": <string> name of a sequence")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="size of boundaries\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_V0_1_0().translate("wdl", allow_empty_container=True)

