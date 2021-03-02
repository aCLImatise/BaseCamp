from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Vtools_Filter_V0_1_0 = CommandToolBuilder(tool="vtools_filter", base_command=["vtools-filter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to input VCF file  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output (filtered) VCF file\n[required]")), ToolInput(tag="in_trash", input_type=File(optional=True), prefix="--trash", doc=InputDocumentation(doc="Path to trash VCF file  [required]")), ToolInput(tag="in_params_file", input_type=File(optional=True), prefix="--params-file", doc=InputDocumentation(doc="Path to filter params json  [required]")), ToolInput(tag="in_index_sample", input_type=String(optional=True), prefix="--index-sample", doc=InputDocumentation(doc="Name of index sample  [required]")), ToolInput(tag="in_no_immediate_return", input_type=Boolean(optional=True), prefix="--no-immediate-return", doc=InputDocumentation(doc="Immediately write filters to file upon\nhitting one filter criterium. Default = True"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output (filtered) VCF file\n[required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

