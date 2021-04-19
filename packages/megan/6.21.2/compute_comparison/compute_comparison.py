from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Compute_Comparison_V0_1_0 = CommandToolBuilder(tool="compute_comparison", base_command=["compute-comparison"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc="[string(s)]                 Input RMA and/or meganized DAA files (single directory ok). Mandatory option.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="[string]                   Output file. Default value: comparison.megan")), ToolInput(tag="in_metadata_file", input_type=Boolean(optional=True), prefix="--metaDataFile", doc=InputDocumentation(doc="[string]        Metadata file.")), ToolInput(tag="in_allow_same_names", input_type=Boolean(optional=True), prefix="--allowSameNames", doc=InputDocumentation(doc="All the same sample name to appear multiple times (will add -1, -2 etc). Default value: false.")), ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Normalize counts. Default value: true.")), ToolInput(tag="in_ignore_unassigned_reads", input_type=Boolean(optional=True), prefix="--ignoreUnassignedReads", doc=InputDocumentation(doc="Ignore unassigned, no-hit or contaminant reads. Default value: false.")), ToolInput(tag="in_keep_one", input_type=Boolean(optional=True), prefix="--keepOne", doc=InputDocumentation(doc="In a normalized comparison, non-zero counts are mapped to 1 or more. Default value: false.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Echo commandline options and be verbose. Default value: false."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="[string]                   Output file. Default value: comparison.megan"))], container="quay.io/biocontainers/megan:6.21.2--h9ee0642_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Comparison_V0_1_0().translate("wdl")

