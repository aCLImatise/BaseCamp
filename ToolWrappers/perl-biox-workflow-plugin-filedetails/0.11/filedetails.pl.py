from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filedetails_Pl_V0_1_0 = CommandToolBuilder(tool="filedetails.pl", base_command=["filedetails.pl"], inputs=[ToolInput(tag="in_check_dir", input_type=Boolean(optional=True), prefix="--check_dir", doc=InputDocumentation(doc="- Str. Directory to check for files.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="- Bool. Display man page")), ToolInput(tag="in_print_dir", input_type=Boolean(optional=True), prefix="--print_dir", doc=InputDocumentation(doc="- Bool. Default=0. Create a directory for\nmetadata, and write details to file\nself->check_dir/meta/file.meta Defaults to\nyes.")), ToolInput(tag="in_print_stdout", input_type=Boolean(optional=True), prefix="--print_stdout", doc=InputDocumentation(doc="- Bool. Default=1. Print metadata to STDOUT.\nDefault is yes.")), ToolInput(tag="in_line_count", input_type=Boolean(optional=True), prefix="--line_count", doc=InputDocumentation(doc="- Bool. Default=1. q(Get a line count per file)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filedetails_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

