from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int

Phyluce_Align_Parallel_Sate_V0_1_0 = CommandToolBuilder(tool="phyluce_align_parallel_sate", base_command=["phyluce_align_parallel_sate"], inputs=[ToolInput(tag="in_sate_conf", input_type=String(optional=True), prefix="--sate-conf", doc=InputDocumentation(doc="[--cores CORES]")), ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The input directory containing fasta files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to hold alignments")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores to use"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory to hold alignments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Parallel_Sate_V0_1_0().translate("wdl", allow_empty_container=True)

