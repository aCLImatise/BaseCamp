from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Boolean

Megahit_Toolkit_Read2Sdbg_V0_1_0 = CommandToolBuilder(tool="megahit_toolkit_read2sdbg", base_command=["megahit_toolkit", "read2sdbg"], inputs=[ToolInput(tag="in_km_er_k", input_type=Int(optional=True), prefix="--kmer_k", doc=InputDocumentation(doc="(=21)                 kmer size")), ToolInput(tag="in_min_km_er_frequency", input_type=Int(optional=True), prefix="--min_kmer_frequency", doc=InputDocumentation(doc="(=2)      min frequency to output an edge")), ToolInput(tag="in_host_mem", input_type=Int(optional=True), prefix="--host_mem", doc=InputDocumentation(doc="(=0)                Max memory to be used. 90% of the free memory is recommended.")), ToolInput(tag="in_num_cpu_threads", input_type=Int(optional=True), prefix="--num_cpu_threads", doc=InputDocumentation(doc="(=0)         number of CPU threads. At least 2.")), ToolInput(tag="in_read_lib_file", input_type=File(optional=True), prefix="--read_lib_file", doc=InputDocumentation(doc="input fast[aq] file, can be gzip'ed. '-' for stdin.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="(=out)         output prefix")), ToolInput(tag="in_mem_flag", input_type=Int(optional=True), prefix="--mem_flag", doc=InputDocumentation(doc="(=1)                memory options. 0: minimize memory usage; 1: automatically use moderate memory; other: use all available mem specified by '--host_mem'")), ToolInput(tag="in_need_mercy", input_type=Boolean(optional=True), prefix="--need_mercy", doc=InputDocumentation(doc="to add mercy edges.")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_s_dbg_builder", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_s_dbg", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megahit_Toolkit_Read2Sdbg_V0_1_0().translate("wdl", allow_empty_container=True)

