from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Agg_Anno_V0_1_0 = CommandToolBuilder(tool="agg_anno", base_command=["agg", "anno"], inputs=[ToolInput(tag="in_include", input_type=Boolean(optional=True), prefix="--include", doc=InputDocumentation(doc="filters to apply eg. -i 'QUAL>=10 && DP<100000 && HWE<10'")), ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="--regions", doc=InputDocumentation(doc="a set of variants that are trusted (eg. 1000G)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="output file name [stdout]")), ToolInput(tag="in_output_type", input_type=String(optional=True), prefix="--output-type", doc=InputDocumentation(doc="b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed")), ToolInput(tag="in_input_dot_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file name [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agg_Anno_V0_1_0().translate("wdl", allow_empty_container=True)

