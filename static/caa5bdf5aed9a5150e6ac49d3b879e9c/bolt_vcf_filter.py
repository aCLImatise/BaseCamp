from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Bolt_Vcf_Filter_V0_1_0 = CommandToolBuilder(tool="bolt_vcf_filter", base_command=["bolt", "vcf", "filter"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="a VCF file (*require)")), ToolInput(tag="in_maxlength", input_type=Int(optional=True), prefix="--maxlength", doc=InputDocumentation(doc="Max SVLENGTH (default 2147483647)")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="Min SVLENGTH (default -2147483647)")), ToolInput(tag="in_only_sv", input_type=Boolean(optional=True), prefix="--onlysv", doc=InputDocumentation(doc="Only SVs")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filter", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Vcf_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

