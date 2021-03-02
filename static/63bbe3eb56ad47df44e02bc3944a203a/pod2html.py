from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Pod2Html_V0_1_0 = CommandToolBuilder(tool="pod2html", base_command=["pod2html"], inputs=[ToolInput(tag="in_cache_dir", input_type=Boolean(optional=True), prefix="--cachedir", doc=InputDocumentation(doc="- directory for the directory cache files.")), ToolInput(tag="in_css", input_type=Boolean(optional=True), prefix="--css", doc=InputDocumentation(doc="- stylesheet URL")), ToolInput(tag="in_flush", input_type=Boolean(optional=True), prefix="--flush", doc=InputDocumentation(doc="- flushes the directory cache.")), ToolInput(tag="in_html_dir", input_type=Boolean(optional=True), prefix="--htmldir", doc=InputDocumentation(doc="- directory for resulting HTML files.")), ToolInput(tag="in_html_root", input_type=Boolean(optional=True), prefix="--htmlroot", doc=InputDocumentation(doc="- http-server base directory from which all relative paths\nin podpath stem (default is /).")), ToolInput(tag="in_in_file", input_type=Boolean(optional=True), prefix="--infile", doc=InputDocumentation(doc="- filename for the pod to convert (input taken from stdin\nby default).")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="- filename for the resulting html file (output sent to\nstdout by default).")), ToolInput(tag="in_pod_path", input_type=Boolean(optional=True), prefix="--podpath", doc=InputDocumentation(doc="- colon-separated list of directories containing library\npods (empty by default).")), ToolInput(tag="in_pod_root", input_type=Boolean(optional=True), prefix="--podroot", doc=InputDocumentation(doc="- filesystem base directory from which all relative paths\nin podpath stem (default is .).")), ToolInput(tag="in_title", input_type=Boolean(optional=True), prefix="--title", doc=InputDocumentation(doc="- title that will appear in resulting html file."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="- filename for the resulting html file (output sent to\nstdout by default)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pod2Html_V0_1_0().translate("wdl", allow_empty_container=True)

