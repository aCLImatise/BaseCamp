from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Megagta_Denovo_V0_1_0 = CommandToolBuilder(tool="megagta_denovo", base_command=["megagta", "denovo"], inputs=[ToolInput(tag="in_s_dbg_name", input_type=String(optional=True), prefix="--sdbg_name", doc=InputDocumentation(doc="succinct de Bruijn graph name")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="(=out)         output prefix")), ToolInput(tag="in_num_cpu_threads", input_type=Int(optional=True), prefix="--num_cpu_threads", doc=InputDocumentation(doc="(=0)         number of cpu threads")), ToolInput(tag="in_max_tip_len", input_type=Int(optional=True), prefix="--max_tip_len", doc=InputDocumentation(doc="(=-1)            max length for tips to be removed. -1 for 2k")), ToolInput(tag="in_no_bubble", input_type=Boolean(optional=True), prefix="--no_bubble", doc=InputDocumentation(doc="do not remove bubbles")), ToolInput(tag="in_min_standalone", input_type=Int(optional=True), prefix="--min_standalone", doc=InputDocumentation(doc="(=400)        min length of a standalone contig to output to final.contigs.fa")), ToolInput(tag="in_min_contig", input_type=Int(optional=True), prefix="--min_contig", doc=InputDocumentation(doc="(=0)              min length of contig to output")), ToolInput(tag="in_de_novo", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megagta_Denovo_V0_1_0().translate("wdl", allow_empty_container=True)

