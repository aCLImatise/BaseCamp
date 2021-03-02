from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maffrag_V0_1_0 = CommandToolBuilder(tool="mafFrag", base_command=["mafFrag"], inputs=[ToolInput(tag="in_out_name", input_type=String(optional=True), prefix="-outName", doc=InputDocumentation(doc="Use XXX instead of database.chrom for the name")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_track", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_strand", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maffrag_V0_1_0().translate("wdl", allow_empty_container=True)

