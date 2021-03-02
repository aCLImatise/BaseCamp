from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hca_Dss_Delete_Bundle_V0_1_0 = CommandToolBuilder(tool="hca_dss_delete_bundle", base_command=["hca", "dss", "delete-bundle"], inputs=[ToolInput(tag="in_reason", input_type=String(optional=True), prefix="--reason", doc=InputDocumentation(doc="User-friendly reason for the bundle or timestamp-specfic bundle deletion.")), ToolInput(tag="in_uuid", input_type=Int(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the bundle.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to write to."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Delete_Bundle_V0_1_0().translate("wdl", allow_empty_container=True)

