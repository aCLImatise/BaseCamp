from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Parsec_Libraries_Get_Folders_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_get_folders", base_command=["parsec", "libraries", "get_folders"], inputs=[ToolInput(tag="in_folder_id", input_type=Directory(optional=True), prefix="--folder_id", doc=InputDocumentation(doc="filter for folder by folder id")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="filter for folder by name. For ``name`` specify the full\npath of the folder starting from the library's root\nfolder, e.g. ``/subfolder/subsubfolder``.")), ToolInput(tag="in_library_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Get_Folders_V0_1_0().translate("wdl")

