from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Cooler_Cload_Pairix_V0_1_0 = CommandToolBuilder(tool="cooler_cload_pairix", base_command=["cooler", "cload", "pairix"], inputs=[ToolInput(tag="in_metadata", input_type=File(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Path to JSON file containing user metadata.")), ToolInput(tag="in_assembly", input_type=Int(optional=True), prefix="--assembly", doc=InputDocumentation(doc="Name of genome assembly (e.g. hg19, mm10)")), ToolInput(tag="in_nproc", input_type=Int(optional=True), prefix="--nproc", doc=InputDocumentation(doc="Number of processes to split the work between.\n[default: 8]")), ToolInput(tag="in_zero_based", input_type=Boolean(optional=True), prefix="--zero-based", doc=InputDocumentation(doc="Positions are zero-based  [default: False]")), ToolInput(tag="in_max_split", input_type=Int(optional=True), prefix="--max-split", doc=InputDocumentation(doc="Divide the pairs from each chromosome into at most\nthis many chunks. Smaller chromosomes will be split\nless frequently or not at all. Increase ths value\nif large chromosomes dominate the workload on\nmultiple processors.  [default: 2]")), ToolInput(tag="in_bins", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pairs_path", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_cool_path", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Cload_Pairix_V0_1_0().translate("wdl")

