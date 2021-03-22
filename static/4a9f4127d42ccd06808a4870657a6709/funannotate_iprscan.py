from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Funannotate_Iprscan_V0_1_0 = CommandToolBuilder(tool="funannotate_iprscan", base_command=["funannotate", "iprscan"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Funannotate folder or FASTA protein file. (Required)")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="--method", doc=InputDocumentation(doc="Search method to use: [local, docker] (Required)")), ToolInput(tag="in_num", input_type=Boolean(optional=True), prefix="--num", doc=InputDocumentation(doc="Number of fasta files per chunk. Default: 1000")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output XML InterProScan5 file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep intermediate files")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="--no-progress", doc=InputDocumentation(doc="Do not print progress to stdout for long sub jobs")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs (total). Default: 12")), ToolInput(tag="in_cpus_per_chunk", input_type=Boolean(optional=True), prefix="--cpus_per_chunk", doc=InputDocumentation(doc="Number of cpus per Docker instance. Default: 4")), ToolInput(tag="in_iprs_can_path", input_type=Boolean(optional=True), prefix="--iprscan_path", doc=InputDocumentation(doc="Path to interproscan.sh. Default: which(interproscan.sh)")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output XML InterProScan5 file"))], container="quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Iprscan_V0_1_0().translate("wdl")

