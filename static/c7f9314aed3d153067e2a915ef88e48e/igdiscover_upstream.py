from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Igdiscover_Upstream_V0_1_0 = CommandToolBuilder(tool="igdiscover_upstream", base_command=["igdiscover", "upstream"], inputs=[ToolInput(tag="in_max_error_percentage", input_type=Int(optional=True), prefix="--max-error-percentage", doc=InputDocumentation(doc="Allow PERCENT errors in V gene match. Default: 1")), ToolInput(tag="in_max_fr_one_errors", input_type=Int(optional=True), prefix="--max-FR1-errors", doc=InputDocumentation(doc="Allow PERCENT errors in FR1 region.")), ToolInput(tag="in_max_cdr_one_errors", input_type=Int(optional=True), prefix="--max-CDR1-errors", doc=InputDocumentation(doc="Allow PERCENT errors in CDR1 region.")), ToolInput(tag="in_min_consensus_size", input_type=Int(optional=True), prefix="--min-consensus-size", doc=InputDocumentation(doc="Require at least N sequences for consensus. Default: 1")), ToolInput(tag="in_consensus_threshold", input_type=Int(optional=True), prefix="--consensus-threshold", doc=InputDocumentation(doc="Threshold for consensus computation. Default: 75%")), ToolInput(tag="in_no_ambiguous", input_type=Boolean(optional=True), prefix="--no-ambiguous", doc=InputDocumentation(doc="Discard consensus sequences with ambiguous bases")), ToolInput(tag="in_part", input_type=Boolean(optional=True), prefix="--part", doc=InputDocumentation(doc="{UTR,leader,UTR+leader}\nWhich part of the sequence before the V gene match to\nanalyze. Default: UTR+leader")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debugging output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Upstream_V0_1_0().translate("wdl", allow_empty_container=True)

