from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Find_Indels_V0_1_0 = CommandToolBuilder(tool="find_indels", base_command=["find_indels"], inputs=[ToolInput(tag="in_min_in_del_length", input_type=Int(optional=True), prefix="--min_indel_length", doc=InputDocumentation(doc="Filter out indels shorter than this length. (default:\n0)")), ToolInput(tag="in_all_alignments", input_type=Boolean(optional=True), prefix="--all_alignments", doc=InputDocumentation(doc="Include secondary and supplementary alignments.\n(default: False)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output indels to file instead of stdout. (default:\n<_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Additionaly output a .bed file. (default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads for parallel processing. (default:\n1)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output indels to file instead of stdout. (default:\n<_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolOutput(tag="out_bed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed", type_hint=File()), doc=OutputDocumentation(doc="Additionaly output a .bed file. (default: None)"))], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Indels_V0_1_0().translate("wdl")

