from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dumpsingletons_V0_1_0 = CommandToolBuilder(tool="dumpSingletons", base_command=["dumpSingletons"], inputs=[ToolInput(tag="in_attempt_locate_checkpoint", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Attempt to locate the last checkpoint in directory 7-CGW.")), ToolInput(tag="in_look_for_checkpoints", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Look for checkpoints in 'name'")), ToolInput(tag="in_path_to_gkpstore", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Path to gkpStore")), ToolInput(tag="in_checkpoint_number_load", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Checkpoint number to load")), ToolInput(tag="in_use_real_uids", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="Use real UIDs for miniscaffolds, otherwise, UIDs start at 1230000")), ToolInput(tag="in_make_mini_scaffolds", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Do NOT make mini scaffolds."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumpsingletons_V0_1_0().translate("wdl", allow_empty_container=True)

