from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Ml_Engine_Versions_V0_1_0 = CommandToolBuilder(tool="gcloud_ml_engine_versions", base_command=["gcloud", "ml-engine", "versions"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a new Cloud ML Engine version.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete an existing Cloud ML Engine version.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe an existing Cloud ML Engine version.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List existing Cloud ML Engine versions.")), ToolInput(tag="in_set_default", input_type=String(), position=4, doc=InputDocumentation(doc="Sets an existing Cloud ML Engine version as the default for its model."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Ml_Engine_Versions_V0_1_0().translate("wdl", allow_empty_container=True)

