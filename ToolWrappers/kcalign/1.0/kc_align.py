from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Kc_Align_V0_1_0 = CommandToolBuilder(tool="kc_align", base_command=["kc-align"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence")), ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="Other sequences to align")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="1-based start position (required in genome mode)")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="1-based end position (required in genome mode)")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Alignment mode (genome, gene, or mixed) (required)")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="Compress identical sequences")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="Enable parallelization of homology search")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="--table", doc=InputDocumentation(doc="Choose alternative translation table (See https://www.\nncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi for\nvalues)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kc_Align_V0_1_0().translate("wdl", allow_empty_container=True)

