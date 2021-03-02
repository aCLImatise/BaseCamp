from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Amptk_Drop_V0_1_0 = CommandToolBuilder(tool="amptk_drop", base_command=["amptk", "drop"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Input OTU file (.cluster.otus.fa) (FASTA)")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="--reads", doc=InputDocumentation(doc="Demultiplexed reads (.demux.fq) (FASTQ)")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List of OTU names to remove, separate by space")), ToolInput(tag="in_file", input_type=Boolean(optional=True), prefix="--file", doc=InputDocumentation(doc="List of OTU names to remove in a file, one per line")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file name. Default: amptk-drop")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file name. Default: amptk-drop"))], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Drop_V0_1_0().translate("wdl")

