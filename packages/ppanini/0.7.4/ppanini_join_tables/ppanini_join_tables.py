from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, File

Ppanini_Join_Tables_V0_1_0 = CommandToolBuilder(tool="ppanini_join_tables", base_command=["ppanini_join_tables"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="additional output is printed")), ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="the directory of tables")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="the table to write")), ToolInput(tag="in_file_name", input_type=File(optional=True), prefix="--file_name", doc=InputDocumentation(doc="only join tables with this string included in the file name")), ToolInput(tag="in_search_subdirectories", input_type=Boolean(optional=True), prefix="--search-subdirectories", doc=InputDocumentation(doc="search sub-directories of input folder for files")), ToolInput(tag="in_mapping_uniref", input_type=File(optional=True), prefix="--mapping-uniref", doc=InputDocumentation(doc="Mapping file: gene to uniref90 file")), ToolInput(tag="in_mapping_cluster", input_type=File(optional=True), prefix="--mapping-cluster", doc=InputDocumentation(doc="Mapping file: cluster to genes file")), ToolInput(tag="in_resume", input_type=Boolean(optional=True), prefix="--resume", doc=InputDocumentation(doc="bypass commands if the output files exist")), ToolInput(tag="in_scale", input_type=String(optional=True), prefix="--scale", doc=InputDocumentation(doc="scale the abundance table"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Join_Tables_V0_1_0().translate("wdl", allow_empty_container=True)

