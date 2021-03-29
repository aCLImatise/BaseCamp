from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Filter_Paf_V0_1_0 = CommandToolBuilder(tool="dsh_filter_paf", base_command=["dsh-filter-paf"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_query", input_type=Boolean(optional=True), prefix="--query", doc=InputDocumentation(doc="[class java.lang.String]  filter by query range, specify as queryName:start-end in 0-based coordindates [optional]")), ToolInput(tag="in_target", input_type=Boolean(optional=True), prefix="--target", doc=InputDocumentation(doc="[class java.lang.String]  filter by target range, specify as targetName:start-end in 0-based coordindates [optional]")), ToolInput(tag="in_mapping_quality", input_type=Boolean(optional=True), prefix="--mapping-quality", doc=InputDocumentation(doc="[class java.lang.Integer]  filter by mapping quality [optional]")), ToolInput(tag="in_script", input_type=Boolean(optional=True), prefix="--script", doc=InputDocumentation(doc="[class java.lang.String]  filter by script, eval against r [optional]")), ToolInput(tag="in_input_paf_file", input_type=Boolean(optional=True), prefix="--input-paf-file", doc=InputDocumentation(doc="[class java.io.File]  input PAF file, default stdin [optional]")), ToolInput(tag="in_output_paf_file", input_type=File(optional=True), prefix="--output-paf-file", doc=InputDocumentation(doc="[class java.io.File]  output PAF file, default stdout [optional]"))], outputs=[ToolOutput(tag="out_output_paf_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_paf_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output PAF file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Filter_Paf_V0_1_0().translate("wdl")

