from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Boolean

Parsec_Libraries_Upload_File_From_Server_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_upload_file_from_server", base_command=["parsec", "libraries", "upload_file_from_server"], inputs=[ToolInput(tag="in_folder_id", input_type=Directory(optional=True), prefix="--folder_id", doc=InputDocumentation(doc="id of the folder where to place the uploaded files.\nIf not provided, the root folder will be used")), ToolInput(tag="in_file_type", input_type=File(optional=True), prefix="--file_type", doc=InputDocumentation(doc="Galaxy file format name  [default: auto]")), ToolInput(tag="in_db_key", input_type=String(optional=True), prefix="--dbkey", doc=InputDocumentation(doc="Dbkey  [default: ?]")), ToolInput(tag="in_link_data_only", input_type=String(optional=True), prefix="--link_data_only", doc=InputDocumentation(doc="either 'copy_files' (default) or 'link_to_files'.\nSetting to 'link_to_files' symlinks instead of\ncopying the files")), ToolInput(tag="in_preserve_dirs", input_type=Boolean(optional=True), prefix="--preserve_dirs", doc=InputDocumentation(doc="Indicate whether to preserve the directory structure\nwhen importing dir")), ToolInput(tag="in_tag_using_filenames", input_type=Boolean(optional=True), prefix="--tag_using_filenames", doc=InputDocumentation(doc="Indicate whether to generate dataset tags from")), ToolInput(tag="in_server_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Upload all files in the specified subdirectory of the Galaxy library")), ToolInput(tag="in_filenames_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--tags TEXT            A list of tags to add to the datasets"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Upload_File_From_Server_V0_1_0().translate("wdl")

