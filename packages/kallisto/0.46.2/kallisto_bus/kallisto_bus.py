from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean, Int

Kallisto_Bus_V0_1_0 = CommandToolBuilder(tool="kallisto_bus", base_command=["kallisto", "bus"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Filename for the kallisto index to be used for\npseudoalignment")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory to write output to")), ToolInput(tag="in_technology", input_type=String(optional=True), prefix="--technology", doc=InputDocumentation(doc="Single-cell technology used")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List all single-cell technologies supported")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default: 1)")), ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="Input file is a BAM file")), ToolInput(tag="in_num", input_type=Boolean(optional=True), prefix="--num", doc=InputDocumentation(doc="Output number of read in flag column (incompatible with --bam)\n--verbose                 Print out progress information every 1M proccessed reads\n")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kallisto_Bus_V0_1_0().translate("wdl", allow_empty_container=True)

