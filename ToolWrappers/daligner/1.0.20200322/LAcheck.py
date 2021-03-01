from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lacheck_V0_1_0 = CommandToolBuilder(tool="LAcheck", base_command=["LAcheck"], inputs=[ToolInput(tag="in_verbose_mode_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose mode, output error messages.")), ToolInput(tag="in_check_sorted_order", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc=": Check that .las is in sorted order.")), ToolInput(tag="in_s_then_check", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": If -S, then check sorted by A-read, A-position pairs\noff => check sorted by A,B-read pairs (LA-piles)\n")), ToolInput(tag="in_vas", input_type=Boolean(optional=True), prefix="-vaS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lacheck_V0_1_0().translate("wdl", allow_empty_container=True)

