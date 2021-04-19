from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Histories_Delete_Dataset_Collection_V0_1_0 = CommandToolBuilder(tool="parsec_histories_delete_dataset_collection", base_command=["parsec", "histories", "delete_dataset_collection"], inputs=[ToolInput(tag="in_dataset_collection_id", input_type=String(), position=0, doc=InputDocumentation(doc="Mark corresponding dataset collection as deleted.")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Delete_Dataset_Collection_V0_1_0().translate("wdl")

