from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Abyss_Longseqdist_V0_1_0 = CommandToolBuilder(tool="abyss_longseqdist", base_command=["abyss-longseqdist"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="length of a k-mer")), ToolInput(tag="in_min_gap", input_type=Int(optional=True), prefix="--min-gap", doc=InputDocumentation(doc="minimum scaffold gap length to output [200]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc="BWA-MEM alignments of long sequences to the assembly")), ToolInput(tag="in_dist", input_type=String(), position=1, doc=InputDocumentation(doc="estimates of the distance between contigs"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Longseqdist_V0_1_0().translate("wdl")

