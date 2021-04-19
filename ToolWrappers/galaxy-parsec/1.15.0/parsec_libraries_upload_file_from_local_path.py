from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Parsec_Libraries_Upload_File_From_Local_Path_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_upload_file_from_local_path", base_command=["parsec", "libraries", "upload_file_from_local_path"], inputs=[ToolInput(tag="in_folder_id", input_type=File(optional=True), prefix="--folder_id", doc=InputDocumentation(doc="id of the folder where to place the uploaded file. If not\nprovided, the root folder will be used")), ToolInput(tag="in_file_type", input_type=File(optional=True), prefix="--file_type", doc=InputDocumentation(doc="Galaxy file format name  [default: auto]")), ToolInput(tag="in_db_key", input_type=String(optional=True), prefix="--dbkey", doc=InputDocumentation(doc="Dbkey  [default: ?]")), ToolInput(tag="in_tags", input_type=String(optional=True), prefix="--tags", doc=InputDocumentation(doc="A list of tags to add to the datasets")), ToolInput(tag="in_file_local_path", input_type=String(), position=0, doc=InputDocumentation(doc="Read local file contents from file_local_path and upload data to a")), ToolInput(tag="in_library_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Output:\nList with a single dictionary containing information about the LDDA"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Upload_File_From_Local_Path_V0_1_0().translate("wdl")

