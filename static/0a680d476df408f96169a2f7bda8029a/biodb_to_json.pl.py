from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory, File

Biodb_To_Json_Pl_V0_1_0 = CommandToolBuilder(tool="biodb_to_json.pl", base_command=["biodb-to-json.pl"], inputs=[ToolInput(tag="in_conf", input_type=String(optional=True), prefix="--conf", doc=InputDocumentation(doc="\")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet. Don't print progress messages.")), ToolInput(tag="in_refid", input_type=String(optional=True), prefix="--refid", doc=InputDocumentation(doc="Optional. Single reference sequence name or id for which to process\ndata.\nBy default, processes all data.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Directory where output should go. Default: data/")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="If passed, compress the output with gzip (requires some web server\nconfiguration to serve properly).\n")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="DESCRIPTION")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="--help | -? | -h\nDisplay an extended help screen."))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Directory where output should go. Default: data/"))], container="quay.io/biocontainers/jbrowse:1.16.11--pl526hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biodb_To_Json_Pl_V0_1_0().translate("wdl")

