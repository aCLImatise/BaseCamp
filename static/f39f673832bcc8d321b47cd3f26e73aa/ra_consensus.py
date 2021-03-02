from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Ra_Consensus_V0_1_0 = CommandToolBuilder(tool="ra_consensus", base_command=["ra_consensus"], inputs=[ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="(required)\ninput afg reads file")), ToolInput(tag="in_contigs", input_type=File(optional=True), prefix="--contigs", doc=InputDocumentation(doc="(required)\ninput afg contigs file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="default: approx. number of processors/cores\nnumber of threads used")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="default: cout\noutput fasta transcripts file")), ToolInput(tag="in_ra_layout", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="default: cout\noutput fasta transcripts file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ra_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)

