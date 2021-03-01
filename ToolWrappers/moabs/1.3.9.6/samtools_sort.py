from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Samtools_Sort_V0_1_0 = CommandToolBuilder(tool="samtools_sort", base_command=["samtools", "sort"], inputs=[ToolInput(tag="in_sort_read_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="sort by read name")), ToolInput(tag="in_use_outprefix_prefix", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="use <out.prefix> as full file name instead of prefix")), ToolInput(tag="in_final_output_stdout", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="final output to stdout")), ToolInput(tag="in_compression_level_from", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="compression level, from 0 to 9 [-1]")), ToolInput(tag="in_at", input_type=Int(optional=True), prefix="-@", doc=InputDocumentation(doc="number of sorting and compression threads [1]")), ToolInput(tag="in_max_memory_thread", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="max memory per thread; suffix K/M/G recognized [768M]")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_prefix", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_use_outprefix_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_use_outprefix_prefix", type_hint=File()), doc=OutputDocumentation(doc="use <out.prefix> as full file name instead of prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

