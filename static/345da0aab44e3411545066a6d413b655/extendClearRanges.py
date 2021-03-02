from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Extendclearranges_V0_1_0 = CommandToolBuilder(tool="extendClearRanges", base_command=["extendClearRanges"], inputs=[ToolInput(tag="in_use_ckpname_checkpoint", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Use ckpName as the checkpoint name")), ToolInput(tag="in_the_checkpoint_use", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="The checkpoint to use")), ToolInput(tag="in_the_gatekeeper_store", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="The gatekeeper store")), ToolInput(tag="in_start_specific_gap", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc="#        Start at a specific gap number")), ToolInput(tag="in_begin_specific_scaffold", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="Begin at a specific scaffold")), ToolInput(tag="in_end_specific_scaffold", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="End after a specific scaffold (INCLUSIVE)")), ToolInput(tag="in_process_only_scaffold", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Process only this scaffold")), ToolInput(tag="in_skip_this_scaffold", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Skip this scaffold")), ToolInput(tag="in_process_only_gap", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="#        Process only this gap")), ToolInput(tag="in__skip_gap", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="#        Skip this gap")), ToolInput(tag="in_the_iteration_ecr", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="The iteration of ECR; either 1 or 2")), ToolInput(tag="in_load", input_type=Boolean(optional=True), prefix="-load", doc=InputDocumentation(doc="Load gkpStore into memory")), ToolInput(tag="in_enable_verbosemultialign_debugging", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Enable VERBOSE_MULTIALIGN for debugging")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extendclearranges_V0_1_0().translate("wdl", allow_empty_container=True)

