from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, Int, String

Cnvnator_V0_1_0 = CommandToolBuilder(tool="cnvnator", base_command=["cnvnator"], inputs=[ToolInput(tag="in_lite", input_type=Boolean(optional=True), prefix="-lite", doc=InputDocumentation(doc="")), ToolInput(tag="in_tree", input_type=Boolean(optional=True), prefix="-tree", doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom", input_type=Array(t=Int(), optional=True), prefix="-chrom", doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="-genome", doc=InputDocumentation(doc="")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="-root", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_one_dot_bam", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvnator_V0_1_0().translate("wdl", allow_empty_container=True)

