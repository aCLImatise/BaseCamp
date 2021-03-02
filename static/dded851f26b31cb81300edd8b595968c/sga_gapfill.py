from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Sga_Gapfill_V0_1_0 = CommandToolBuilder(tool="sga_gapfill", base_command=["sga", "gapfill"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="load the FM-index with prefix NAME")), ToolInput(tag="in_start_km_er", input_type=Int(optional=True), prefix="--start-kmer", doc=InputDocumentation(doc="First kmer size used to attempt to resolve each gap (default: 91)")), ToolInput(tag="in_end_km_er", input_type=Int(optional=True), prefix="--end-kmer", doc=InputDocumentation(doc="Last kmer size used to attempt to resolve each gap (default: 51)")), ToolInput(tag="in_km_er_threshold", input_type=String(optional=True), prefix="--kmer-threshold", doc=InputDocumentation(doc="only use kmers seen at least T times")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM computation threads")), ToolInput(tag="in_sample_rate", input_type=Int(optional=True), prefix="--sample-rate", doc=InputDocumentation(doc="use occurrence array sample rate of N in the FM-index. Higher values use significantly\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 128)")), ToolInput(tag="in_scaffolds_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Gapfill_V0_1_0().translate("wdl", allow_empty_container=True)

