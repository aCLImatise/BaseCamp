from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Tripaille_Feature_Sync_V0_1_0 = CommandToolBuilder(tool="tripaille_feature_sync", base_command=["tripaille", "feature", "sync"], inputs=[ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Common name of the organism to sync")), ToolInput(tag="in_organism_id", input_type=String(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="ID of the organism to sync")), ToolInput(tag="in_max_sync", input_type=Int(optional=True), prefix="--max_sync", doc=InputDocumentation(doc="Maximum number of features to sync (default: all)")), ToolInput(tag="in_types", input_type=String(optional=True), prefix="--types", doc=InputDocumentation(doc="List of types of records to be synced (e.g. gene mRNA,\ndefault: all)")), ToolInput(tag="in_ids", input_type=Int(optional=True), prefix="--ids", doc=InputDocumentation(doc="List of names of records to be synced (e.g. gene0001,\ndefault: all)")), ToolInput(tag="in_job_name", input_type=String(optional=True), prefix="--job_name", doc=InputDocumentation(doc="Name of the job")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Return immediately without waiting for job completion")), ToolInput(tag="in_status", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Feature_Sync_V0_1_0().translate("wdl", allow_empty_container=True)

