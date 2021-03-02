from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Filter_Sam_V0_1_0 = CommandToolBuilder(tool="dsh_filter_sam", base_command=["dsh-filter-sam"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_range", input_type=Boolean(optional=True), prefix="--range", doc=InputDocumentation(doc="[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]")), ToolInput(tag="in_mapq", input_type=Boolean(optional=True), prefix="--mapq", doc=InputDocumentation(doc="[class java.lang.Integer]  filter by mapq [optional]")), ToolInput(tag="in_script", input_type=Boolean(optional=True), prefix="--script", doc=InputDocumentation(doc="[class java.lang.String]  filter by script, eval against r [optional]")), ToolInput(tag="in_input_sam_file", input_type=Boolean(optional=True), prefix="--input-sam-file", doc=InputDocumentation(doc="[class java.io.File]  input SAM file, default stdin [optional]")), ToolInput(tag="in_output_sam_file", input_type=File(optional=True), prefix="--output-sam-file", doc=InputDocumentation(doc="[class java.io.File]  output SAM file, default stdout [optional]"))], outputs=[ToolOutput(tag="out_output_sam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sam_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output SAM file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Filter_Sam_V0_1_0().translate("wdl")

