from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Directory, Int

Platon_V0_1_0 = CommandToolBuilder(tool="platon", base_command=["platon"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="database path (default = <platon_path>/db)")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="applied filter mode: sensitivity: RDS only (>= 95%\nsensitivity); specificity: RDS only (>=99.9%\nspecificity); accuracy: RDS & characterization\nheuristics (highest accuracy) (default = accuracy)")), ToolInput(tag="in_characterize", input_type=Boolean(optional=True), prefix="--characterize", doc=InputDocumentation(doc="deactivate filters; characterize all contigs")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory (default = current working directory)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="file prefix (default = input file name)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use (default = number of\navailable CPUs)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print verbose information"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory (default = current working directory)"))], container="quay.io/biocontainers/platon:1.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Platon_V0_1_0().translate("wdl")

