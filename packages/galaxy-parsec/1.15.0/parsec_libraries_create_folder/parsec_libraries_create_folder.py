from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Parsec_Libraries_Create_Folder_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_create_folder", base_command=["parsec", "libraries", "create_folder"], inputs=[ToolInput(tag="in_description", input_type=Directory(optional=True), prefix="--description", doc=InputDocumentation(doc="description of the new folder in the data library")), ToolInput(tag="in_base_folder_id", input_type=Directory(optional=True), prefix="--base_folder_id", doc=InputDocumentation(doc="id of the folder where to create the new folder. If\nnot provided, the root folder will be used")), ToolInput(tag="in_folder", input_type=Directory(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Create_Folder_V0_1_0().translate("wdl")

