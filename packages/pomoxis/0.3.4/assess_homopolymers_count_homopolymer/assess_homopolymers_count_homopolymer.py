from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String

Assess_Homopolymers_Count_Homopolymer_V0_1_0 = CommandToolBuilder(tool="assess_homopolymers_count_homopolymer", base_command=["assess_homopolymers", "count", "homopolymer"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory (will be created). (default:\nhomopolymers)")), ToolInput(tag="in_homo_len", input_type=Int(optional=True), prefix="--homo_len", doc=InputDocumentation(doc="Minimum homopolymer length, default 3 (default: 3)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input bam file."))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (will be created). (default:\nhomopolymers)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assess_Homopolymers_Count_Homopolymer_V0_1_0().translate("wdl", allow_empty_container=True)

