from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, File

Humann2_Join_Tables_V0_1_0 = CommandToolBuilder(tool="humann2_join_tables", base_command=["humann2_join_tables"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="additional output is printed")), ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="the directory of tables")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="the table to write")), ToolInput(tag="in_file_name", input_type=File(optional=True), prefix="--file_name", doc=InputDocumentation(doc="only join tables with this string included in the file name")), ToolInput(tag="in_search_subdirectories", input_type=Boolean(optional=True), prefix="--search-subdirectories", doc=InputDocumentation(doc="search sub-directories of input folder for files\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Join_Tables_V0_1_0().translate("wdl", allow_empty_container=True)

