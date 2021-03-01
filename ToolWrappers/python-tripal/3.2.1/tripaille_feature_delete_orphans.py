from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tripaille_Feature_Delete_Orphans_V0_1_0 = CommandToolBuilder(tool="tripaille_feature_delete_orphans", base_command=["tripaille", "feature", "delete_orphans"], inputs=[ToolInput(tag="in_job_name", input_type=String(optional=True), prefix="--job_name", doc=InputDocumentation(doc="Name of the job")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Return immediately without waiting for job completion")), ToolInput(tag="in_status", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Feature_Delete_Orphans_V0_1_0().translate("wdl", allow_empty_container=True)

