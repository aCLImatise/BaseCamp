from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Hp_Extract_Pairwise_V0_1_0 = CommandToolBuilder(tool="hp_extract_pairwise", base_command=["hp_extract_pairwise"], inputs=[ToolInput(tag="in_align_json", input_type=File(optional=True), prefix="--align_json", doc=InputDocumentation(doc="JSON file describing alignment (output of\npairwise_align stage)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file. Default is stdout")), ToolInput(tag="in_out_fmt", input_type=String(optional=True), prefix="--outfmt", doc=InputDocumentation(doc="Format for output (default: nuc_fa)")), ToolInput(tag="in_ref_reg", input_type=String(optional=True), prefix="--refreg", doc=InputDocumentation(doc="Reference region. String format is ref:start-stop. For\nexample, the region string to extract pol when aligned\nto HXB2 is HIV_B.K03455.HXB2:2085-5096")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_align_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_align_json", type_hint=File()), doc=OutputDocumentation(doc="JSON file describing alignment (output of\npairwise_align stage)")), ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file. Default is stdout"))], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hp_Extract_Pairwise_V0_1_0().translate("wdl")

