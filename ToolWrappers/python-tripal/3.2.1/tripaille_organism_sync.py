from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tripaille_Organism_Sync_V0_1_0 = CommandToolBuilder(tool="tripaille_organism_sync", base_command=["tripaille", "organism", "sync"], inputs=[ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Common name of the organism to sync")), ToolInput(tag="in_organism_id", input_type=String(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="ID of the organism to sync")), ToolInput(tag="in_job_name", input_type=String(optional=True), prefix="--job_name", doc=InputDocumentation(doc="Name of the job")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Return immediately without waiting for job completion")), ToolInput(tag="in_status", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Organism_Sync_V0_1_0().translate("wdl", allow_empty_container=True)

