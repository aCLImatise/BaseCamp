from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Muse_Call_V0_1_0 = CommandToolBuilder(tool="MuSE_call", base_command=["MuSE", "call"], inputs=[ToolInput(tag="in_faidx_indexed_reference", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="faidx indexed reference sequence file")), ToolInput(tag="in_single_region_chrpospos", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="single region (chr:pos-pos) where somatic\nmutations are called")), ToolInput(tag="in_list_regions_chrpospos", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="list of regions (chr:pos-pos or BED), one\nregion per line")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="output file name (suffix '.MuSE.txt' is\nautomatically added)\n")), ToolInput(tag="in_tumor_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_matched_normal_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name (suffix '.MuSE.txt' is\nautomatically added)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Muse_Call_V0_1_0().translate("wdl", allow_empty_container=True)

