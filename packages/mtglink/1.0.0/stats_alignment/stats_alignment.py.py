from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory

Stats_Alignment_Py_V0_1_0 = CommandToolBuilder(tool="stats_alignment.py", base_command=["stats_alignment.py"], inputs=[ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="file containing the inserted sequences obtained from MindTheGap (format: 'xxx.insertions.fasta')")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="file containing the reference sequence of the gap (format: 'xxx.fasta')")), ToolInput(tag="in_ext", input_type=Int(optional=True), prefix="--ext", doc=InputDocumentation(doc="size of the gap, on both sides; determine start/end of gapfilling")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="prefix of output file to save the statistical results")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="output directory for saving results\n"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="prefix of output file to save the statistical results")), ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory for saving results\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stats_Alignment_Py_V0_1_0().translate("wdl", allow_empty_container=True)

