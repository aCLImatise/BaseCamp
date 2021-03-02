from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, Int, String

Hgloadmaf_V0_1_0 = CommandToolBuilder(tool="hgLoadMaf", base_command=["hgLoadMaf"], inputs=[ToolInput(tag="in_warn_instead_error_emptyincomplete", input_type=Boolean(optional=True), prefix="-warn", doc=InputDocumentation(doc="warn instead of error upon empty/incomplete alignments")), ToolInput(tag="in_warn_instead_error_detail", input_type=Boolean(optional=True), prefix="-WARN", doc=InputDocumentation(doc="warn instead of error, with detail for the warning")), ToolInput(tag="in_test", input_type=File(optional=True), prefix="-test", doc=InputDocumentation(doc="use infile as input, and suppress loading\nthe database. Just create .tab file in current dir.")), ToolInput(tag="in_path_prefix", input_type=Directory(optional=True), prefix="-pathPrefix", doc=InputDocumentation(doc="load files from specified directory\n(default /gbdb/database/table.")), ToolInput(tag="in_tmpdir", input_type=File(optional=True), prefix="-tmpDir", doc=InputDocumentation(doc="path to directory for creation of temporary .tab file\nwhich will be removed after loading")), ToolInput(tag="in_load_file", input_type=File(optional=True), prefix="-loadFile", doc=InputDocumentation(doc="use file as input")), ToolInput(tag="in_max_namelen", input_type=Int(optional=True), prefix="-maxNameLen", doc=InputDocumentation(doc="specify max chromosome name length to avoid\nreference to chromInfo table")), ToolInput(tag="in_def_pos", input_type=File(optional=True), prefix="-defPos", doc=InputDocumentation(doc="file to put default position in\ndefault position is first block")), ToolInput(tag="in_custom", input_type=Boolean(optional=True), prefix="-custom", doc=InputDocumentation(doc="loading a custom track, don't use history\nor extFile tables")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadmaf_V0_1_0().translate("wdl", allow_empty_container=True)

