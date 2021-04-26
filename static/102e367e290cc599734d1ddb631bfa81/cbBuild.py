from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Cbbuild_V0_1_0 = CommandToolBuilder(tool="cbBuild", base_command=["cbBuild"], inputs=[ToolInput(tag="in_in_it", input_type=Boolean(optional=True), prefix="--init", doc=InputDocumentation(doc="copy sample cellbrowser.conf and desc.conf to current")), ToolInput(tag="in_in_conf", input_type=File(optional=True), prefix="--inConf", doc=InputDocumentation(doc="a cellbrowser.conf file that specifies labels and all\ninput files, default is ./cellbrowser.conf, can be\nspecified multiple times")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="output directory, default can be set through the env.\nvariable CBOUT or ~/.cellbrowser.conf, current value:\nnone")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="if build is successful, start an http server on this\nport and serve the result via http://localhost:port")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="run in all subdirectories of the current directory.\nUseful when rebuilding a full hierarchy.")), ToolInput(tag="in_redo", input_type=String(optional=True), prefix="--redo", doc=InputDocumentation(doc="do not use cached old data. Can be: 'meta' or 'matrix'\n(matrix includes meta).\n")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="-d, --debug           show debug messages"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory, default can be set through the env.\nvariable CBOUT or ~/.cellbrowser.conf, current value:\nnone"))], container="quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbbuild_V0_1_0().translate("wdl")

