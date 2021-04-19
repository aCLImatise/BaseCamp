from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Histories_Create_Dataset_Collection_V0_1_0 = CommandToolBuilder(tool="parsec_histories_create_dataset_collection", base_command=["parsec", "histories", "create_dataset_collection"], inputs=[ToolInput(tag="in_collection_description", input_type=String(), position=0, doc=InputDocumentation(doc="Create a new dataset collection"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Create_Dataset_Collection_V0_1_0().translate("wdl")

