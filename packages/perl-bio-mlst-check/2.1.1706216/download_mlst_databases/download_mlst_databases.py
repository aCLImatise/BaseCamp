from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Download_Mlst_Databases_V0_1_0 = CommandToolBuilder(tool="download_mlst_databases", base_command=["download_mlst_databases"], inputs=[ToolInput(tag="in_config_file_containing", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Config file containing details of MLST databases from pubMLST")), ToolInput(tag="in_directory_where_databases", input_type=Directory(optional=True), prefix="-b", doc=InputDocumentation(doc="Directory where MLST databases are stored [$MLST_DATABASES]")), ToolInput(tag="in_print_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version number and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Mlst_Databases_V0_1_0().translate("wdl", allow_empty_container=True)

