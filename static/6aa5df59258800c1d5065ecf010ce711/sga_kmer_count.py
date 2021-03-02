from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Sga_Kmer_Count_V0_1_0 = CommandToolBuilder(tool="sga_kmer_count", base_command=["sga", "kmer-count"], inputs=[ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="The length of the kmer to use. (default: 27)")), ToolInput(tag="in_sample_rate", input_type=Int(optional=True), prefix="--sample-rate", doc=InputDocumentation(doc="use occurrence array sample rate of N in the FM-index. Higher values use significantly\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 128)")), ToolInput(tag="in_cache_length", input_type=Int(optional=True), prefix="--cache-length", doc=InputDocumentation(doc="Cache Length for bwt lookups (default: 10)")), ToolInput(tag="in_src_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Kmer_Count_V0_1_0().translate("wdl", allow_empty_container=True)

