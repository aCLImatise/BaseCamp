from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Cooler_Cload_Hiclib_V0_1_0 = CommandToolBuilder(tool="cooler_cload_hiclib", base_command=["cooler", "cload", "hiclib"], inputs=[ToolInput(tag="in_metadata", input_type=File(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Path to JSON file containing user metadata.")), ToolInput(tag="in_assembly", input_type=Int(optional=True), prefix="--assembly", doc=InputDocumentation(doc="Name of genome assembly (e.g. hg19, mm10)")), ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="Control the number of pixels handled by each worker\nprocess at a time.  [default: 100000000]")), ToolInput(tag="in_bins", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pairs_path", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_cool_path", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Cload_Hiclib_V0_1_0().translate("wdl")

