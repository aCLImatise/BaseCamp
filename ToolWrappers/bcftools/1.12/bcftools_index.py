from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Bcftools_Index_V0_1_0 = CommandToolBuilder(tool="bcftools_index", base_command=["bcftools", "index"], inputs=[ToolInput(tag="in_csi", input_type=Boolean(optional=True), prefix="--csi", doc=InputDocumentation(doc="generate CSI-format index for VCF/BCF files [default]")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite index if it already exists")), ToolInput(tag="in_min_shift", input_type=Int(optional=True), prefix="--min-shift", doc=InputDocumentation(doc="set minimal interval size for CSI indices to 2^INT [14]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="optional output index file name")), ToolInput(tag="in_tbi", input_type=Boolean(optional=True), prefix="--tbi", doc=InputDocumentation(doc="generate TBI-format index for VCF files")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use multithreading with INT worker threads [0]")), ToolInput(tag="in_n_records", input_type=Boolean(optional=True), prefix="--nrecords", doc=InputDocumentation(doc="print number of records based on existing index file")), ToolInput(tag="in_stats", input_type=Boolean(optional=True), prefix="--stats", doc=InputDocumentation(doc="print per contig stats based on existing index file")), ToolInput(tag="in_in_dot_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="optional output index file name"))], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcftools_Index_V0_1_0().translate("wdl")

