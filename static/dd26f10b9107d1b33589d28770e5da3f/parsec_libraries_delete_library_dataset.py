from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Libraries_Delete_Library_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_delete_library_dataset", base_command=["parsec", "libraries", "delete_library_dataset"], inputs=[ToolInput(tag="in_purged", input_type=Boolean(optional=True), prefix="--purged", doc=InputDocumentation(doc="Indicate that the dataset should be purged (permanently deleted)")), ToolInput(tag="in_library_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dataset_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Delete_Library_Dataset_V0_1_0().translate("wdl")

