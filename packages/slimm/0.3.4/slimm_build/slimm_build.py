from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Slimm_Build_V0_1_0 = CommandToolBuilder(tool="slimm_build", base_command=["slimm_build"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="The path to the output file (default slimm_db.sldb) Valid filetype\nis: .sldb. Default: slimm_db.sldb.")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="NCBI's names.dmp file which contains the mapping of taxaid to name")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="NCBI's nodes.dmp file which contains the taxonomic tree.")), ToolInput(tag="in_batch", input_type=Int(optional=True), prefix="--batch", doc=InputDocumentation(doc="maximum number of mapping to load to memory. (default=1000000)\nDefault: 1000000.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output.")), ToolInput(tag="in_see", input_type=String(), position=0, doc=InputDocumentation(doc="http://www.seqan.de/projects/slimm  for more information."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The path to the output file (default slimm_db.sldb) Valid filetype\nis: .sldb. Default: slimm_db.sldb."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slimm_Build_V0_1_0().translate("wdl", allow_empty_container=True)

