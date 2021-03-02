from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Graphdump_V0_1_0 = CommandToolBuilder(tool="graphdump", base_command=["graphdump"], inputs=[ToolInput(tag="in_k_value", input_type=Int(optional=True), prefix="--kvalue", doc=InputDocumentation(doc="(required)  Value of k")), ToolInput(tag="in__seqfile_accepted", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<>,  --seqfile <>  (accepted multiple times)\nsequences file name")), ToolInput(tag="in_format", input_type=Int(optional=True), prefix="--format", doc=InputDocumentation(doc="<seq|group|dot|gfa1|gfa2\n|fasta>\n(required)  Output format")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Add a prefix to segments in GFA (in case if you have genomes with\nidentical FASTA headers)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphdump_V0_1_0().translate("wdl", allow_empty_container=True)

