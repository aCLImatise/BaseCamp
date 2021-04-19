from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File, Int

Taxonkit_Version_V0_1_0 = CommandToolBuilder(tool="taxonkit_version", base_command=["taxonkit", "version"], inputs=[ToolInput(tag="in_check_update", input_type=Boolean(optional=True), prefix="--check-update", doc=InputDocumentation(doc="check update")), ToolInput(tag="in_data_dir", input_type=Directory(optional=True), prefix="--data-dir", doc=InputDocumentation(doc="directory containing nodes.dmp and names.dmp (default '/root/.taxonkit')")), ToolInput(tag="in_line_buffered", input_type=File(optional=True), prefix="--line-buffered", doc=InputDocumentation(doc="use line buffering on output, i.e., immediately writing to stdin/file for every line of output")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="out file ('-' for stdout, suffix .gz for gzipped out) (default '-')")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of CPUs. 4 is enough (default 2)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print verbose information"))], outputs=[ToolOutput(tag="out_line_buffered", output_type=File(optional=True), selector=InputSelector(input_to_select="in_line_buffered", type_hint=File()), doc=OutputDocumentation(doc="use line buffering on output, i.e., immediately writing to stdin/file for every line of output")), ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="out file ('-' for stdout, suffix .gz for gzipped out) (default '-')"))], container="quay.io/biocontainers/taxonkit:0.8.0--h9ee0642_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonkit_Version_V0_1_0().translate("wdl")

