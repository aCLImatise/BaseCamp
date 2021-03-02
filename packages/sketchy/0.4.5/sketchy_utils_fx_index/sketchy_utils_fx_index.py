from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sketchy_Utils_Fx_Index_V0_1_0 = CommandToolBuilder(tool="sketchy_utils_fx_index", base_command=["sketchy", "utils", "fx-index"], inputs=[ToolInput(tag="in_fast_x", input_type=File(optional=True), prefix="--fastx", doc=InputDocumentation(doc="Path to Fast{a,q} input file to index reads from headers\n[required]")), ToolInput(tag="in_sort_by", input_type=String(optional=True), prefix="--sort_by", doc=InputDocumentation(doc="Sort read index by column: runid, sampleid, barcode,\nname, start_time [start_time]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output sorted read index to tab-delimited file\n[read_index.tsv]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output sorted read index to tab-delimited file\n[read_index.tsv]"))], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Utils_Fx_Index_V0_1_0().translate("wdl")

