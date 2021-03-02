from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Nebulizer_Add_Library_Datasets_V0_1_0 = CommandToolBuilder(tool="nebulizer_add_library_datasets", base_command=["nebulizer", "add_library_datasets"], inputs=[ToolInput(tag="in_file_type", input_type=File(optional=True), prefix="--file-type", doc=InputDocumentation(doc="Galaxy data type to assign the files to (default is\n'auto'). Must be a valid Galaxy data type. If not 'auto'\nthen all files will be assigned the same type.")), ToolInput(tag="in_db_key", input_type=String(optional=True), prefix="--dbkey", doc=InputDocumentation(doc="dbkey to assign to files (default is '?')")), ToolInput(tag="in_server", input_type=Boolean(optional=True), prefix="--server", doc=InputDocumentation(doc="upload files from the Galaxy server file system (default\nis to upload files from local system)")), ToolInput(tag="in_link", input_type=Boolean(optional=True), prefix="--link", doc=InputDocumentation(doc="create symlinks to files on server (only valid if used\nwith --server; default is to copy files into Galaxy)")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dest", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Add_Library_Datasets_V0_1_0().translate("wdl", allow_empty_container=True)

