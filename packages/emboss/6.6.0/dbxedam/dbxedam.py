from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dbxedam_V0_1_0 = CommandToolBuilder(tool="dbxedam", base_command=["dbxedam"], inputs=[ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="-directory", doc=InputDocumentation(doc="directory  [.] Database directory")), ToolInput(tag="in_filenames", input_type=Boolean(optional=True), prefix="-filenames", doc=InputDocumentation(doc="string     [EDAM*.obo] Wildcard database filename (Any\nstring)")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="-fields", doc=InputDocumentation(doc="menu       [*] Index fields (Values: id (ID); acc\n(Synonym); nam (Name); isa (Parent); des\n(Description); ns (Namespace); hasin\n(has_input); hasout (has_output); isid\n(is_identifier_of); isfmt (is_format_of))")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [*.dbxedam] General log output file")), ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="-release", doc=InputDocumentation(doc="string     [0.0] Release number (Any string up to 9\ncharacters)")), ToolInput(tag="in_date", input_type=Boolean(optional=True), prefix="-date", doc=InputDocumentation(doc="string     [00/00/00] Index date (Date string dd/mm/yy)")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="-exclude", doc=InputDocumentation(doc="string     Wildcard filename(s) to exclude (Any string)")), ToolInput(tag="in_index_outdir", input_type=File(optional=True), prefix="-indexoutdir", doc=InputDocumentation(doc="outdir     [.] Index file output directory"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.dbxedam] General log output file")), ToolOutput(tag="out_index_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_index_outdir", type_hint=File()), doc=OutputDocumentation(doc="outdir     [.] Index file output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbxedam_V0_1_0().translate("wdl", allow_empty_container=True)

