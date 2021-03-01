from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Findmatchesbetweenkunitigsandreads_V0_1_0 = CommandToolBuilder(tool="findMatchesBetweenKUnitigsAndReads", base_command=["findMatchesBetweenKUnitigsAndReads"], inputs=[ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="Long output format (false)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (kunitigs_reads_matches)")), ToolInput(tag="in_mer", input_type=Int(optional=True), prefix="--mer", doc=InputDocumentation(doc="*Length of mer")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Gzip output (false)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (1)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose (false)")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_kuni_tig_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (kunitigs_reads_matches)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findmatchesbetweenkunitigsandreads_V0_1_0().translate("wdl", allow_empty_container=True)

