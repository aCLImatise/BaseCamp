from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Spanner_Operations_V0_1_0 = CommandToolBuilder(tool="gcloud_spanner_operations", base_command=["gcloud", "spanner", "operations"], inputs=[ToolInput(tag="in_cancel", input_type=String(), position=0, doc=InputDocumentation(doc="Cancel a Cloud Spanner operation.")), ToolInput(tag="in_describe", input_type=String(), position=1, doc=InputDocumentation(doc="Describe a Cloud Spanner operation.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="List the Cloud Spanner operations on the given instance or database."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Spanner_Operations_V0_1_0().translate("wdl", allow_empty_container=True)

