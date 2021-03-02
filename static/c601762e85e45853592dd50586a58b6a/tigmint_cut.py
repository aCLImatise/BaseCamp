from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Tigmint_Cut_V0_1_0 = CommandToolBuilder(tool="tigmint_cut", base_command=["tigmint-cut"], inputs=[ToolInput(tag="in_fast_a_out", input_type=File(optional=True), prefix="--fastaout", doc=InputDocumentation(doc="The output FASTA file.")), ToolInput(tag="in_bed_out", input_type=File(optional=True), prefix="--bedout", doc=InputDocumentation(doc="The output BED file. Default is the output FASTA\nfilename plus .bed")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of parallel processes to launch [8]")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Window size used to check for spanning molecules (bp)\n[1000]")), ToolInput(tag="in_spanning", input_type=Int(optional=True), prefix="--spanning", doc=InputDocumentation(doc="Spanning molecules threshold (no misassembly in window\nif num. spanning molecules >= n [2])")), ToolInput(tag="in_trim", input_type=Int(optional=True), prefix="--trim", doc=InputDocumentation(doc="Number of base pairs to trim at contig cuts (bp) [0]")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Reference genome fasta file (must have FAI index\ngenerated)")), ToolInput(tag="in_bed", input_type=String(), position=1, doc=InputDocumentation(doc="Sorted bed file of molecule extents"))], outputs=[ToolOutput(tag="out_fast_a_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fast_a_out", type_hint=File()), doc=OutputDocumentation(doc="The output FASTA file.")), ToolOutput(tag="out_bed_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed_out", type_hint=File()), doc=OutputDocumentation(doc="The output BED file. Default is the output FASTA\nfilename plus .bed"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tigmint_Cut_V0_1_0().translate("wdl", allow_empty_container=True)

