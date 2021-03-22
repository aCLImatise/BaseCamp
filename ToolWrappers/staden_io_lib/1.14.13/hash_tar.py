from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Hash_Tar_V0_1_0 = CommandToolBuilder(tool="hash_tar", base_command=["hash_tar"], inputs=[ToolInput(tag="in_tar_archive_use", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Tar archive filename: use if reading from stdin")), ToolInput(tag="in_force_name_eg", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="Force no archive name (eg will concat to archive itself)")), ToolInput(tag="in_set_arc_offset", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="Set arc. offset to size of hash (use when prepending)")), ToolInput(tag="in_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose mode")), ToolInput(tag="in_index_directory_names", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Index directory names (useless?)")), ToolInput(tag="in_set_file_header", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="Set tar entry 'name' to be a file header")), ToolInput(tag="in_set_file_footer", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Set tar entry 'name' to be a file footer")), ToolInput(tag="in_use_only_portion", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Use only the filename portion of a pathname")), ToolInput(tag="in_reads_lines_entries", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="Reads lines of 'old new' and renames entries before indexing.")), ToolInput(tag="in_tar_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hash_Tar_V0_1_0().translate("wdl")

