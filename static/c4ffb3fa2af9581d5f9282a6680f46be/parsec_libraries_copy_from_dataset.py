from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Parsec_Libraries_Copy_From_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_copy_from_dataset", base_command=["parsec", "libraries", "copy_from_dataset"], inputs=[ToolInput(tag="in_folder_id", input_type=Directory(optional=True), prefix="--folder_id", doc=InputDocumentation(doc="id of the folder where to place the uploaded files. If not\nprovided, the root folder will be used")), ToolInput(tag="in_message", input_type=String(optional=True), prefix="--message", doc=InputDocumentation(doc="message for copying action")), ToolInput(tag="in_library_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dataset_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Copy_From_Dataset_V0_1_0().translate("wdl")

