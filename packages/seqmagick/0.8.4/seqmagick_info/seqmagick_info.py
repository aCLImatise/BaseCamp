from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Seqmagick_Info_V0_1_0 = CommandToolBuilder(tool="seqmagick_info", base_command=["seqmagick", "info"], inputs=[ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Input format. Overrides extension for all input files")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="Output destination. Default: STDOUT")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="Specify output format as tab-delimited, CSV or aligned\nin a borderless table. Default is tab-delimited if the\noutput is directed to a file, aligned if output to the\nconsole.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (CPUs). [1]")), ToolInput(tag="in_sequence_files", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Output destination. Default: STDOUT")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="Specify output format as tab-delimited, CSV or aligned\nin a borderless table. Default is tab-delimited if the\noutput is directed to a file, aligned if output to the\nconsole."))], container="quay.io/biocontainers/seqmagick:0.8.4--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmagick_Info_V0_1_0().translate("wdl")

