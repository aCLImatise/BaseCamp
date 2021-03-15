from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Synapse_Sync_V0_1_0 = CommandToolBuilder(tool="synapse_sync", base_command=["synapse", "sync"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryRun", doc=InputDocumentation(doc="Perform validation without uploading.")), ToolInput(tag="in_send_messages", input_type=Boolean(optional=True), prefix="--sendMessages", doc=InputDocumentation(doc="Send notifications via Synapse messaging (email) at specific\nintervals, on errors and on completion.")), ToolInput(tag="in_retries", input_type=Int(optional=True), prefix="--retries", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="A tsv file with file locations and metadata to be pushed to")), ToolInput(tag="in_synapse_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Sync_V0_1_0().translate("wdl")

