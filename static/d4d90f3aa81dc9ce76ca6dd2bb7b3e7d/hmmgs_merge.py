from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Hmmgs_Merge_V0_1_0 = CommandToolBuilder(tool="hmmgs_merge", base_command=["hmmgs", "merge"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Generate all combinations for multiple\npaths, instead of just the best")), ToolInput(tag="in_min_bits", input_type=Int(optional=True), prefix="--min-bits", doc=InputDocumentation(doc="Minimum bits score")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum length")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Write output to file instead of stdout")), ToolInput(tag="in_short_sample_name", input_type=String(optional=True), prefix="--short_samplename", doc=InputDocumentation(doc="short sample name, to be used as part of\ncontig identifiers. This allow analyzing\ncontigs together from different samples in\ndownstream analysis\n")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Write output to file instead of stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmgs_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

