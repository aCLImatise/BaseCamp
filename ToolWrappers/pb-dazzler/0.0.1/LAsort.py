from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lasort_V0_1_0 = CommandToolBuilder(tool="LAsort", base_command=["LAsort"], inputs=[ToolInput(tag="in_verbose_mode_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose mode, output statistics as proceed.")), ToolInput(tag="in_sort_areadaposition_pairs", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": sort .las by A-read,A-position pairs for map usecase\noff => sort .las by A,B-read pairs for overlap piles\n")), ToolInput(tag="in_va", input_type=Boolean(optional=True), prefix="-va", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lasort_V0_1_0().translate("wdl", allow_empty_container=True)

