from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Mimodd_Sort_V0_1_0 = CommandToolBuilder(tool="mimodd_sort", base_command=["mimodd", "sort"], inputs=[ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output to the specified file (default:\nstdout)")), ToolInput(tag="in_i_format", input_type=File(optional=True), prefix="--iformat", doc=InputDocumentation(doc="|sam     the format of the input file (default: assume bam)")), ToolInput(tag="in_o_format", input_type=String(optional=True), prefix="--oformat", doc=InputDocumentation(doc="|sam     specify whether the output should be in sam or bam\nformat (default: bam)")), ToolInput(tag="in_by_name", input_type=Boolean(optional=True), prefix="--by-name", doc=InputDocumentation(doc="sort by read name")), ToolInput(tag="in_compression_level_from", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="compression level, from 0 to 9")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="--memory", doc=InputDocumentation(doc="maximal amount of memory to be used in GB (overrides\nconfig setting)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="the number of threads to use (overrides config\nsetting)\n")), ToolInput(tag="in_sort", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output to the specified file (default:\nstdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

