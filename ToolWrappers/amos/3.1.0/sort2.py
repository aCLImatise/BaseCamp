from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Sort2_V0_1_0 = CommandToolBuilder(tool="sort2", base_command=["sort2"], inputs=[ToolInput(tag="in_first_column_sort", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="- First  column to sort after (Default 0)")), ToolInput(tag="in_second_column_sort", input_type=Int(optional=True), prefix="-j", doc=InputDocumentation(doc="- Second column to sort after (Default 1)")), ToolInput(tag="in_version_print_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="|version      - Print the version and exit;")), ToolInput(tag="in_depend", input_type=Boolean(optional=True), prefix="-depend", doc=InputDocumentation(doc="- Print the program and database dependency list;")), ToolInput(tag="in_debug", input_type=Int(optional=True), prefix="-debug", doc=InputDocumentation(doc="- Set the debug <level> (0, non-debug by default);")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort2_V0_1_0().translate("wdl", allow_empty_container=True)

