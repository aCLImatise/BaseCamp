from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Nucmerannotate_V0_1_0 = CommandToolBuilder(tool="nucmerAnnotate", base_command=["nucmerAnnotate"], inputs=[ToolInput(tag="in_ignore", input_type=Int(optional=True), prefix="-ignore", doc=InputDocumentation(doc="- Maximum length of the end sequence unaligned (Default: 20 bp)")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="- Display all alignments (Default: only the annotated ones)")), ToolInput(tag="in_loose", input_type=Boolean(optional=True), prefix="-loose", doc=InputDocumentation(doc="- Looser annotation")), ToolInput(tag="in_no_id", input_type=Boolean(optional=True), prefix="-noid", doc=InputDocumentation(doc="- Filter out identity alignments (sequences with the same id)")), ToolInput(tag="in_version_print_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="|version      - Print the version and exit;")), ToolInput(tag="in_depend", input_type=Boolean(optional=True), prefix="-depend", doc=InputDocumentation(doc="- Print the program and database dependency list;")), ToolInput(tag="in_debug", input_type=Int(optional=True), prefix="-debug", doc=InputDocumentation(doc="- Set the debug <level> (0, non-debug by default);")), ToolInput(tag="in_coords_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucmerannotate_V0_1_0().translate("wdl", allow_empty_container=True)

