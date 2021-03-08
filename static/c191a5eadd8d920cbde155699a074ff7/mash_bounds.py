from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mash_Bounds_V0_1_0 = CommandToolBuilder(tool="mash_bounds", base_command=["mash", "bounds"], inputs=[ToolInput(tag="in_kmer_size_", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size. (1-32) [21]")), ToolInput(tag="in_mash_distance_estimates", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Mash distance estimates will be within the given error bounds with\nthis probability. (0-1) [0.99]\n")), ToolInput(tag="in_option", input_type=String(), position=0, doc=InputDocumentation(doc="Description (range) [default]"))], outputs=[], container="quay.io/biocontainers/mash:2.3--ha61e061_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mash_Bounds_V0_1_0().translate("wdl")

