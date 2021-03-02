from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Float

Drep_Evaluate_V0_1_0 = CommandToolBuilder(tool="dRep_evaluate", base_command=["dRep", "evaluate"], inputs=[ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="threads (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="make extra debugging output (default: False)")), ToolInput(tag="in_warn_dist", input_type=Float(optional=True), prefix="--warn_dist", doc=InputDocumentation(doc="How far from the threshold to throw cluster warnings\n(default: 0.25)")), ToolInput(tag="in_warn_sim", input_type=Float(optional=True), prefix="--warn_sim", doc=InputDocumentation(doc="Similarity threshold for warnings between dereplicated\ngenomes (default: 0.98)")), ToolInput(tag="in_warn_aln", input_type=Float(optional=True), prefix="--warn_aln", doc=InputDocumentation(doc="Minimum aligned fraction for warnings between\ndereplicated genomes (ANIn) (default: 0.25)")), ToolInput(tag="in_things_evaluate_input", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[EVALUATE [EVALUATE ...]], --evaluate [EVALUATE [EVALUATE ...]]\nThings to evaluate Input 'all' or 'a' to evaluate all\n1) Evaluate de-replicated genome similarity\n2) Throw warnings for clusters that were almost different\n3) Generate a database of information on winning genomes\n(default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drep_Evaluate_V0_1_0().translate("wdl", allow_empty_container=True)

