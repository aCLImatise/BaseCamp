from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Alignmenttools_Rm_Partialseq_V0_1_0 = CommandToolBuilder(tool="AlignmentTools_rm_partialseq", base_command=["AlignmentTools", "rm-partialseq"], inputs=[ToolInput(tag="in_alignment_mode", input_type=String(optional=True), prefix="--alignment-mode", doc=InputDocumentation(doc="Alignment mode: overlap, glocal, local or global.\ndefault = overlap")), ToolInput(tag="in_min_gaps", input_type=Int(optional=True), prefix="--min_gaps", doc=InputDocumentation(doc="The minimum number of continuous gaps in the\nbeginning or end of the query alignment. If above\nthe cutoff, the query is marked as partial. default\n= 50")), ToolInput(tag="in_knn", input_type=Int(optional=True), prefix="--knn", doc=InputDocumentation(doc="The top k closest targets using a heuristic method.\n(default = 20)")), ToolInput(tag="in_alignment_out", input_type=File(optional=True), prefix="--alignment-out", doc=InputDocumentation(doc="The output file containing the pairwise alignment")), ToolInput(tag="in_full_length_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_passed_seq_outfile", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_alignment_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_alignment_out", type_hint=File()), doc=OutputDocumentation(doc="The output file containing the pairwise alignment"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignmenttools_Rm_Partialseq_V0_1_0().translate("wdl", allow_empty_container=True)

