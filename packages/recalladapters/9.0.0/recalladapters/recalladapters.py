from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Float

Recalladapters_V0_1_0 = CommandToolBuilder(tool="recalladapters", base_command=["recalladapters"], inputs=[ToolInput(tag="in_prefix_output_filenames", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Prefix of output filenames")), ToolInput(tag="in_sub_read_set", input_type=String(optional=True), prefix="--subreadset", doc=InputDocumentation(doc="Input subreadset.xml")), ToolInput(tag="in_nprocs", input_type=Int(optional=True), prefix="--nProcs", doc=InputDocumentation(doc="Number of threads for parallel ZMW processing")), ToolInput(tag="in_number_threads_parallel_bam", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Number of threads for parallel BAM compression, can only\nbe set when not generating pbindex inline with --inlinePbi")), ToolInput(tag="in_inline_pbi", input_type=Boolean(optional=True), prefix="--inlinePbi", doc=InputDocumentation(doc="Generate pbindex inline with BAM writing")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="No progress output.")), ToolInput(tag="in_min_adapter_score", input_type=Int(optional=True), prefix="--minAdapterScore", doc=InputDocumentation(doc="Minimal score for an adapter")), ToolInput(tag="in_min_sub_length", input_type=Int(optional=True), prefix="--minSubLength", doc=InputDocumentation(doc="Minimal subread length. Default: 50")), ToolInput(tag="in_mins_nr", input_type=Float(optional=True), prefix="--minSnr", doc=InputDocumentation(doc="Minimal SNR across channels. Default: 3.75")), ToolInput(tag="in_whitelist_z_mw_num", input_type=String(optional=True), prefix="--whitelistZmwNum", doc=InputDocumentation(doc="Only process given ZMW NUMBERs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recalladapters_V0_1_0().translate("wdl", allow_empty_container=True)

