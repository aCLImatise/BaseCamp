from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String, Boolean

Ppanggolin_Graph_V0_1_0 = CommandToolBuilder(tool="ppanggolin_graph", base_command=["ppanggolin", "graph"], inputs=[ToolInput(tag="in_pan_genome", input_type=File(optional=True), prefix="--pangenome", doc=InputDocumentation(doc="The pangenome .h5 file (default: None)")), ToolInput(tag="in_remove_high_copy_number", input_type=Int(optional=True), prefix="--remove_high_copy_number", doc=InputDocumentation(doc="Positive Number: Remove families having a number of\ncopy of gene in a single organism above or equal to\nthis threshold in at least one organism (0 or negative\nvalues are ignored). (default: 0)")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="directory for storing temporary files (default: /tmp)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for debug) (default: 1)")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="log output file (default: stdout)")), ToolInput(tag="in_disable_prog_bar", input_type=Boolean(optional=True), prefix="--disable_prog_bar", doc=InputDocumentation(doc="disables the progress bars (default: False)")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="Number of available cpus (default: 1)")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Force writing in output directory and in pangenome\noutput file. (default: False)\n"))], outputs=[ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="log output file (default: stdout)")), ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Force writing in output directory and in pangenome\noutput file. (default: False)\n"))], container="quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanggolin_Graph_V0_1_0().translate("wdl")

