from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String

Megahit_Core_No_Hw_Accel_Local_V0_1_0 = CommandToolBuilder(tool="megahit_core_no_hw_accel_local", base_command=["megahit_core_no_hw_accel", "local"], inputs=[ToolInput(tag="in_contig_file", input_type=File(optional=True), prefix="--contig_file", doc=InputDocumentation(doc="contig file")), ToolInput(tag="in_lib_file_prefix", input_type=File(optional=True), prefix="--lib_file_prefix", doc=InputDocumentation(doc="lib file prefix")), ToolInput(tag="in_seed_km_er", input_type=Int(optional=True), prefix="--seed_kmer", doc=InputDocumentation(doc="(=31)              kmer size for seeding alignments")), ToolInput(tag="in_sparsity", input_type=Int(optional=True), prefix="--sparsity", doc=InputDocumentation(doc="(=8)                sparsity of hash mapper")), ToolInput(tag="in_similarity", input_type=Float(optional=True), prefix="--similarity", doc=InputDocumentation(doc="(=0.8)            alignment similarity threshold")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="(=0)")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_local", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megahit_Core_No_Hw_Accel_Local_V0_1_0().translate("wdl", allow_empty_container=True)

