from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Intersect_Bed_V0_1_0 = CommandToolBuilder(tool="dsh_intersect_bed", base_command=["dsh-intersect-bed"], inputs=[ToolInput(tag="in_a_input_file", input_type=Boolean(optional=True), prefix="--a-input-file", doc=InputDocumentation(doc="[class java.io.File]  A input BED file, default stdin [optional]")), ToolInput(tag="in_b_input_file", input_type=Boolean(optional=True), prefix="--b-input-file", doc=InputDocumentation(doc="[class java.io.File]  B input BED file [required]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="[class java.io.File]  output BED file, default stdout [optional]")), ToolInput(tag="in_strategy", input_type=Boolean(optional=True), prefix="--strategy", doc=InputDocumentation(doc="[class java.lang.String]  strategy { range-list, range-set, centered-range-tree, r-tree, r-star-tree }, default range-set [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output BED file, default stdout [optional]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Intersect_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

