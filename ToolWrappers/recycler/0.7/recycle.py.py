from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Directory

Recycle_Py_V0_1_0 = CommandToolBuilder(tool="recycle.py", base_command=["recycle.py"], inputs=[ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="(spades 3.50+) assembly graph FASTG file to process;\nrecommended for spades 3.5: before_rr.fastg, for\nspades 3.6+:assembly_graph.fastg")), ToolInput(tag="in_max_k", input_type=Int(optional=True), prefix="--max_k", doc=InputDocumentation(doc="integer reflecting maximum k value used by the\nassembler")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file resulting from aligning reads to contigs\nfile, filtering for best matches")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="minimum length required for reporting [default: 1000]")), ToolInput(tag="in_max_cv", input_type=Int(optional=True), prefix="--max_CV", doc=InputDocumentation(doc="coefficient of variation used for pre-selection\n[default: 0.5, higher--> less restrictive]")), ToolInput(tag="in_iso", input_type=String(optional=True), prefix="--iso", doc=InputDocumentation(doc="True or False value reflecting whether data sequenced\nwas an isolated strain")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recycle_Py_V0_1_0().translate("wdl", allow_empty_container=True)

