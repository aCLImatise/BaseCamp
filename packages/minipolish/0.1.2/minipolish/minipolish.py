from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Minipolish_V0_1_0 = CommandToolBuilder(tool="minipolish", base_command=["minipolish"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for alignment and polishing\n(default: 8)")), ToolInput(tag="in_rounds", input_type=Int(optional=True), prefix="--rounds", doc=InputDocumentation(doc="Number of full Racon polishing rounds (default: 2)")), ToolInput(tag="in_pac_bio", input_type=Boolean(optional=True), prefix="--pacbio", doc=InputDocumentation(doc="Use this flag for PacBio reads to make Minipolish\nuse the map-pb Minimap2 preset (default: assumes\nNanopore reads and uses the map-ont preset)")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="Long reads for polishing (FASTA or FASTQ format)")), ToolInput(tag="in_assembly", input_type=String(), position=1, doc=InputDocumentation(doc="Miniasm assembly to be polished (GFA format)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minipolish_V0_1_0().translate("wdl", allow_empty_container=True)

