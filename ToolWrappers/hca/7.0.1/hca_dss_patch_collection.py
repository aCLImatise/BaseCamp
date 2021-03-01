from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hca_Dss_Patch_Collection_V0_1_0 = CommandToolBuilder(tool="hca_dss_patch_collection", base_command=["hca", "dss", "patch-collection"], inputs=[ToolInput(tag="in_add_contents", input_type=String(optional=True), prefix="--add-contents", doc=InputDocumentation(doc="List of new items to add to the collection. Items are de-duplicated (if an identical item is already present in the collection or given multiple times, it will only be added once).")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="New description for the collection.")), ToolInput(tag="in_details", input_type=String(optional=True), prefix="--details", doc=InputDocumentation(doc="New details for the collection.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="New name for the collection.")), ToolInput(tag="in_remove_contents", input_type=String(optional=True), prefix="--remove-contents", doc=InputDocumentation(doc="List of items to remove from the collection. Items must match exactly to be removed. Items not found in the collection are ignored.")), ToolInput(tag="in_uuid", input_type=Int(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID of the collection to update.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to update the collection on. Updates are propagated to other replicas."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Patch_Collection_V0_1_0().translate("wdl", allow_empty_container=True)

