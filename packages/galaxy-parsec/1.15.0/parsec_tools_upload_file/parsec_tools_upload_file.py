from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Tools_Upload_File_V0_1_0 = CommandToolBuilder(tool="parsec_tools_upload_file", base_command=["parsec", "tools", "upload_file"], inputs=[ToolInput(tag="in_db_key", input_type=String(optional=True), prefix="--dbkey", doc=InputDocumentation(doc="(optional) genome dbkey")), ToolInput(tag="in_file_name", input_type=String(optional=True), prefix="--file_name", doc=InputDocumentation(doc="(optional) name of the new history dataset")), ToolInput(tag="in_file_type", input_type=String(optional=True), prefix="--file_type", doc=InputDocumentation(doc="(optional) Galaxy datatype for the new dataset, default is")), ToolInput(tag="in_to_posix_lines", input_type=Boolean(optional=True), prefix="--to_posix_lines", doc=InputDocumentation(doc="if ``True`` (the default), convert universal line endings\nto POSIX line endings. Set to ``False`` when uploading a\ngzip, bz2 or zip archive containing a binary file")), ToolInput(tag="in_auto", input_type=String(), position=0, doc=InputDocumentation(doc="--space_to_tab    whether to convert spaces to tabs. Default is ``False``."))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Tools_Upload_File_V0_1_0().translate("wdl")

