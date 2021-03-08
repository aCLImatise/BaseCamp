from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mmseqs_Countkmer_V0_1_0 = CommandToolBuilder(tool="mmseqs_countkmer", base_command=["mmseqs", "countkmer"], inputs=[ToolInput(tag="in_kmer_length_set", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length (0: automatically set to optimum) [5]")), ToolInput(tag="in_spaced_km_er_mode", input_type=Int(optional=True), prefix="--spaced-kmer-mode", doc=InputDocumentation(doc="0: use consecutive positions in k-mers; 1: use spaced k-mers [0]")), ToolInput(tag="in_spaced_km_er_pattern", input_type=String(optional=True), prefix="--spaced-kmer-pattern", doc=InputDocumentation(doc="User-specified spaced k-mer pattern []")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Countkmer_V0_1_0().translate("wdl")

