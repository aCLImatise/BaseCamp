from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Haarz_X_Callmethyl_V0_1_0 = CommandToolBuilder(tool="haarz.x_callmethyl", base_command=["haarz.x", "callmethyl"], inputs=[ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="[<file>]  list of path/filename(s) of fasta database sequence(s) (default:none)")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="path/filename of sorted and indexed (!) bamfile (default:none)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="start <n> threads (default:10)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path/filename of output file (will be sorted) (default:none)")), ToolInput(tag="in_unique_only", input_type=Boolean(optional=True), prefix="--uniqueonly", doc=InputDocumentation(doc="only use uniquely mapped reads")), ToolInput(tag="in_haar_z_do_tx", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="path/filename of output file (will be sorted) (default:none)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haarz_X_Callmethyl_V0_1_0().translate("wdl", allow_empty_container=True)

