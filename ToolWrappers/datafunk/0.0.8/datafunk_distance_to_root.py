from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Datafunk_Distance_To_Root_V0_1_0 = CommandToolBuilder(tool="datafunk_distance_to_root", base_command=["datafunk", "distance_to_root"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Fasta file to read. Must be aligned to Wuhan-Hu-1")), ToolInput(tag="in_input_metadata", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Metadata to read. Must contain epi week information\n"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Distance_To_Root_V0_1_0().translate("wdl")

