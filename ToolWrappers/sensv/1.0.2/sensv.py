from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Sensv_V0_1_0 = CommandToolBuilder(tool="sensv", base_command=["sensv"], inputs=[ToolInput(tag="in_sample_name", input_type=String(optional=True), prefix="--sample_name", doc=InputDocumentation(doc="sample name")), ToolInput(tag="in_fast_q_file", input_type=File(optional=True), prefix="--fastq_file", doc=InputDocumentation(doc="fastq file")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_min_sv_size", input_type=Int(optional=True), prefix="--min_sv_size", doc=InputDocumentation(doc="min Sv Size")), ToolInput(tag="in_max_sv_size", input_type=Int(optional=True), prefix="--max_sv_size", doc=InputDocumentation(doc="max Sv Size")), ToolInput(tag="in_disable_dp_filter", input_type=String(optional=True), prefix="--disable_dp_filter", doc=InputDocumentation(doc="disable DP filter")), ToolInput(tag="in_disable_gen_alt_ref_bam", input_type=String(optional=True), prefix="--disable_gen_altref_bam", doc=InputDocumentation(doc="disable gen altref bam")), ToolInput(tag="in_target_sv_type", input_type=String(optional=True), prefix="--target_sv_type", doc=InputDocumentation(doc="target sv type")), ToolInput(tag="in_ref_ver", input_type=Int(optional=True), prefix="--ref_ver", doc=InputDocumentation(doc="reference version (default 37)")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="reference fasta file absolute path")), ToolInput(tag="in_nprocs", input_type=Int(optional=True), prefix="--nprocs", doc=InputDocumentation(doc="max # of processes to run sensv\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sensv_V0_1_0().translate("wdl", allow_empty_container=True)

