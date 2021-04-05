from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Gfatools_Gfa2Fa_V0_1_0 = CommandToolBuilder(tool="gfatools_gfa2fa", base_command=["gfatools", "gfa2fa"], inputs=[ToolInput(tag="in_line_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="line length [60]")), ToolInput(tag="in_output_stable_sequences", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="output stable sequences (rGFA only)")), ToolInput(tag="in_skip_rank_", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="skip rank-0 sequences (rGFA only; force -s)")), ToolInput(tag="in_only_output_rank", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="only output rank-0 sequences (rGFA only; force -s)")), ToolInput(tag="in_in_dot_gfa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gfatools:0.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfatools_Gfa2Fa_V0_1_0().translate("wdl")

