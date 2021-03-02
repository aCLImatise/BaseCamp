from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Bioformats_Gfftagstat_V0_1_0 = CommandToolBuilder(tool="bioformats_gfftagstat", base_command=["bioformats", "gfftagstat"], inputs=[ToolInput(tag="in_source", input_type=Int(optional=True), prefix="--source", doc=InputDocumentation(doc="filter GFF3 features by the specified source")), ToolInput(tag="in_type", input_type=Int(optional=True), prefix="--type", doc=InputDocumentation(doc="filter GFF3 features by the specified type")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=String(), position=0, doc=InputDocumentation(doc="a GFF3 file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Gfftagstat_V0_1_0().translate("wdl", allow_empty_container=True)

