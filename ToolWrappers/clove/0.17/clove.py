from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Clove_V0_1_0 = CommandToolBuilder(tool="clove", base_command=["clove"], inputs=[ToolInput(tag="in_algorithm_socratesdellydellycrestgustafbedpegridss", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="<algorithm (Socrates/Delly/Delly2/Crest/Gustaf/BEDPE/GRIDSS)>")), ToolInput(tag="in_coverage", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="<coverage>")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[default: CLOVE.vcf]")), ToolInput(tag="in_perform_depth_check", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="not perform read depth check. This option will lead all deletions and tandem\nduplications to fail, but runs a lot faster. Use to get an idea about complex\nvariants only.\n"))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[default: CLOVE.vcf]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clove_V0_1_0().translate("wdl", allow_empty_container=True)

