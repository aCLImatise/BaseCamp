from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Validate_Rna_V0_1_0 = CommandToolBuilder(tool="validate_rna", base_command=["validate_rna"], inputs=[ToolInput(tag="in_min_contig", input_type=Int(optional=True), prefix="--min_contig", doc=InputDocumentation(doc="(=100)            minimum contigs")), ToolInput(tag="in_similar", input_type=Float(optional=True), prefix="--similar", doc=InputDocumentation(doc="(=0.95)              similarity")), ToolInput(tag="in_complete_rate", input_type=Float(optional=True), prefix="--complete_rate", doc=InputDocumentation(doc="(=0.8)         completeness")), ToolInput(tag="in_is_local", input_type=Boolean(optional=True), prefix="--is_local", doc=InputDocumentation(doc="local align")), ToolInput(tag="in_validate_contigs_blat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_contigs_dot_fa_dot", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Rna_V0_1_0().translate("wdl", allow_empty_container=True)

