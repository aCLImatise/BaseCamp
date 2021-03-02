from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory

Biopet_Basecounter_V0_1_0 = CommandToolBuilder(tool="biopet_basecounter", base_command=["biopet-basecounter"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_ref_flat", input_type=File(optional=True), prefix="--refFlat", doc=InputDocumentation(doc="refFlat file. Mandatory")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory. Mandatory")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Bam file. Mandatory")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="The prefix for the output files")), ToolInput(tag="in_base_counter", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Mandatory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Basecounter_V0_1_0().translate("wdl", allow_empty_container=True)

