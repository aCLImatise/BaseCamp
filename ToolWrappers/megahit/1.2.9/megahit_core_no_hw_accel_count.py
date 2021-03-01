from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Megahit_Core_No_Hw_Accel_Count_V0_1_0 = CommandToolBuilder(tool="megahit_core_no_hw_accel_count", base_command=["megahit_core_no_hw_accel", "count"], inputs=[ToolInput(tag="in_km_er_k", input_type=Int(optional=True), prefix="--kmer_k", doc=InputDocumentation(doc="(=21)                 kmer size")), ToolInput(tag="in_min_km_er_frequency", input_type=Int(optional=True), prefix="--min_kmer_frequency", doc=InputDocumentation(doc="(=2)      min frequency to output an edge")), ToolInput(tag="in_host_mem", input_type=Int(optional=True), prefix="--host_mem", doc=InputDocumentation(doc="(=0)                Max memory to be used. 90% of the free memory is recommended.")), ToolInput(tag="in_num_cpu_threads", input_type=Int(optional=True), prefix="--num_cpu_threads", doc=InputDocumentation(doc="(=0)         number of CPU threads. At least 2.")), ToolInput(tag="in_read_lib_file", input_type=File(optional=True), prefix="--read_lib_file", doc=InputDocumentation(doc="read library configuration file.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="(=out)         output prefix")), ToolInput(tag="in_mem_flag", input_type=Int(optional=True), prefix="--mem_flag", doc=InputDocumentation(doc="(=1)                memory options. 0: minimize memory usage; 1: automatically use moderate memory; other: use all available mem specified by '--host_mem'")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="")), ToolInput(tag="in_s_dbg_builder", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_count", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megahit_Core_No_Hw_Accel_Count_V0_1_0().translate("wdl", allow_empty_container=True)

