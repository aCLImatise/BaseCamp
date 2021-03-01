from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ffindex_Build_V0_1_0 = CommandToolBuilder(tool="ffindex_build", base_command=["ffindex_build"], inputs=[ToolInput(tag="in_append_filesindexes_also", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="append files/indexes, also needed for sorting an already existing ffindex")), ToolInput(tag="in_second_ffindex_data", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="a second ffindex data file for inserting/appending")), ToolInput(tag="in_second_ffindex_index", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="a second ffindex index file for inserting/appending")), ToolInput(tag="in_sort_index_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="sort index file, so that the index can queried.\nAnother append operations can be done without sorting.")), ToolInput(tag="in_print_version_info", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print version and other info then exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Build_V0_1_0().translate("wdl", allow_empty_container=True)

