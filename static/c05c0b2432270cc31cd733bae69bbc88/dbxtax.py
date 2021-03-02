from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dbxtax_V0_1_0 = CommandToolBuilder(tool="dbxtax", base_command=["dbxtax"], inputs=[ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="-directory", doc=InputDocumentation(doc="directory  [.] Database directory")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="-fields", doc=InputDocumentation(doc="menu       [*] Index fields (Values: id (ID); acc\n(Synonym); tax (Scientific name); rnk\n(Rank); up (Parent); gc (Genetics code); mgc\n(Mitochondrial genetic code))")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [*.dbxtax] General log output file")), ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="-release", doc=InputDocumentation(doc="string     [0.0] Release number (Any string up to 9\ncharacters)")), ToolInput(tag="in_date", input_type=Boolean(optional=True), prefix="-date", doc=InputDocumentation(doc="string     [00/00/00] Index date (Date string dd/mm/yy)")), ToolInput(tag="in_index_outdir", input_type=File(optional=True), prefix="-indexoutdir", doc=InputDocumentation(doc="outdir     [.] Index file output directory"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.dbxtax] General log output file")), ToolOutput(tag="out_index_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_index_outdir", type_hint=File()), doc=OutputDocumentation(doc="outdir     [.] Index file output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbxtax_V0_1_0().translate("wdl", allow_empty_container=True)

