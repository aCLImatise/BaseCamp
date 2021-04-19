from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Histories_Update_Dataset_Collection_V0_1_0 = CommandToolBuilder(tool="parsec_histories_update_dataset_collection", base_command=["parsec", "histories", "update_dataset_collection"], inputs=[ToolInput(tag="in_deleted", input_type=Boolean(optional=True), prefix="--deleted", doc=InputDocumentation(doc="Mark or unmark history dataset collection as deleted")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Replace history dataset collection name with the given string")), ToolInput(tag="in_visible", input_type=Boolean(optional=True), prefix="--visible", doc=InputDocumentation(doc="Mark or unmark history dataset collection as visible")), ToolInput(tag="in_dataset_collection_id", input_type=String(), position=0, doc=InputDocumentation(doc="Update history dataset collection metadata. Some of the attributes that"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Update_Dataset_Collection_V0_1_0().translate("wdl")

