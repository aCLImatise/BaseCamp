from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Float

Sparse_Report_V0_1_0 = CommandToolBuilder(tool="sparse_report", base_command=["sparse", "report"], inputs=[ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="All sparse workspaces under the assigned folder will be added in automatically.")), ToolInput(tag="in_tag", input_type=String(optional=True), prefix="--tag", doc=InputDocumentation(doc="Tag level to report, default: s. Details see documents for the seqlist format.")), ToolInput(tag="in_absolute", input_type=Boolean(optional=True), prefix="--absolute", doc=InputDocumentation(doc="Report absolute numbers. Default: False (report percentages)")), ToolInput(tag="in_low", input_type=Float(optional=True), prefix="--low", doc=InputDocumentation(doc="Lower limit of percentage for a value to report. Default: 0.0")), ToolInput(tag="in_species_filter", input_type=File(optional=True), prefix="--speciesFilter", doc=InputDocumentation(doc="Show only species listed in the file.")), ToolInput(tag="in_sample_filter", input_type=Boolean(optional=True), prefix="--sampleFilter", doc=InputDocumentation(doc="Show only samples that have hits in the listed species. Default: False")), ToolInput(tag="in_inverse", input_type=Boolean(optional=True), prefix="--inverse", doc=InputDocumentation(doc="Inverse the output matrix such that columns are species and rows are samples.")), ToolInput(tag="in_workspace", input_type=String(), position=0, doc=InputDocumentation(doc="Folders that contain 'SPARSE extract' outputs. REQUIRED at least one folder."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparse_Report_V0_1_0().translate("wdl", allow_empty_container=True)

