from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Imsindel_V0_1_0 = CommandToolBuilder(tool="imsindel", base_command=["imsindel"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="/path/to/foo.bam")), ToolInput(tag="in_out_d", input_type=File(optional=True), prefix="--outd", doc=InputDocumentation(doc="/path/to/outoput-dir")), ToolInput(tag="in_in_del_size", input_type=Int(optional=True), prefix="--indelsize", doc=InputDocumentation(doc="indel-size")), ToolInput(tag="in_re_ffa", input_type=Boolean(optional=True), prefix="--reffa", doc=InputDocumentation(doc="/path/to/ref.fa")), ToolInput(tag="in_gl_search", input_type=Boolean(optional=True), prefix="--glsearch", doc=InputDocumentation(doc="[glsearch36]")), ToolInput(tag="in_sam_tools", input_type=Boolean(optional=True), prefix="--samtools", doc=InputDocumentation(doc="[samtools]")), ToolInput(tag="in_output_consensus_seq", input_type=File(optional=True), prefix="--output-consensus-seq", doc=InputDocumentation(doc="/path/to/output-dir")), ToolInput(tag="in_exclude_region", input_type=Boolean(optional=True), prefix="--exclude-region", doc=InputDocumentation(doc="/path/to/exclude-list"))], outputs=[ToolOutput(tag="out_output_consensus_seq", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_consensus_seq", type_hint=File()), doc=OutputDocumentation(doc="/path/to/output-dir"))], container="quay.io/biocontainers/imsindel:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Imsindel_V0_1_0().translate("wdl")

