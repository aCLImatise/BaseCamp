from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Confindr_Database_Setup_V0_1_0 = CommandToolBuilder(tool="confindr_database_setup", base_command=["confindr_database_setup"], inputs=[ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output_folder", doc=InputDocumentation(doc="Path to download databases to - if folder does not\nexist, will be created. If folder does exist, will be\ndeleted and updated sequences downloaded. Defaults to\n~/.confindr_db, or the CONFINDR_DB environmental\nvariable.")), ToolInput(tag="in_secret_file", input_type=File(optional=True), prefix="--secret_file", doc=InputDocumentation(doc="Path to consumer secret file for rMLST database.\n"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Path to download databases to - if folder does not\nexist, will be created. If folder does exist, will be\ndeleted and updated sequences downloaded. Defaults to\n~/.confindr_db, or the CONFINDR_DB environmental\nvariable."))], container="quay.io/biocontainers/confindr:0.7.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Confindr_Database_Setup_V0_1_0().translate("wdl")

