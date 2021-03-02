from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Whatshap_Hapcut2Vcf_V0_1_0 = CommandToolBuilder(tool="whatshap_hapcut2vcf", base_command=["whatshap", "hapcut2vcf"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output VCF file. If omitted, use standard output.\n")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="VCF file")), ToolInput(tag="in_hap_cut_result", input_type=String(), position=1, doc=InputDocumentation(doc="hapCUT result file"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output VCF file. If omitted, use standard output.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whatshap_Hapcut2Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

