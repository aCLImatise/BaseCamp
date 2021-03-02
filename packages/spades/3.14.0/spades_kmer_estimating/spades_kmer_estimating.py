from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Spades_Kmer_Estimating_V0_1_0 = CommandToolBuilder(tool="spades_kmer_estimating", base_command=["spades-kmer-estimating"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="K-mer length")), ToolInput(tag="in_dataset", input_type=String(optional=True), prefix="--dataset", doc=InputDocumentation(doc="Dataset description (in YAML)")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Kmer_Estimating_V0_1_0().translate("wdl", allow_empty_container=True)

