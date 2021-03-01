from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Btrim_V0_1_0 = CommandToolBuilder(tool="btrim", base_command=["btrim"], inputs=[ToolInput(tag="in_u", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="[Unitig file]")), ToolInput(tag="in_k", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[Kmer size]")), ToolInput(tag="in_var_2", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[Tipping length (none)]")), ToolInput(tag="in_var_3", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[Cleaning Step (1)]")), ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[Core used (1)]")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[Unitig min coverage (none, 0 for auto)]")), ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[Unitig max coverage (none)]")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[Edge filtering ratio (none)]")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[Output file (out_tipped)]")), ToolInput(tag="in_unit_ig", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[Output file (out_tipped)]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Btrim_V0_1_0().translate("wdl", allow_empty_container=True)

