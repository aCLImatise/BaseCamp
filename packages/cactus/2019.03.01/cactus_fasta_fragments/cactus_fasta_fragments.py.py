from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Cactus_Fasta_Fragments_Py_V0_1_0 = CommandToolBuilder(tool="cactus_fasta_fragments.py", base_command=["cactus_fasta_fragments.py"], inputs=[ToolInput(tag="in_fragment", input_type=Int(optional=True), prefix="--fragment", doc=InputDocumentation(doc="length of each fragment\n(default is 100)")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="distance between the start of each fragment\n(default is 50)")), ToolInput(tag="in_shuffle", input_type=Boolean(optional=True), prefix="--shuffle", doc=InputDocumentation(doc="[=<seed>]   randomly shuffle the order that fragments are output;\nthis can be very memory intensive, as all fragments\nare collected in a list before any are output\n(by default, fragments are output in sequence order)")), ToolInput(tag="in_head", input_type=Int(optional=True), prefix="--head", doc=InputDocumentation(doc="limit the number of fragments emitted"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Fasta_Fragments_Py_V0_1_0().translate("wdl", allow_empty_container=True)

