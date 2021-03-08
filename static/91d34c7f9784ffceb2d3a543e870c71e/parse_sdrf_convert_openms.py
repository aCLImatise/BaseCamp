from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Parse_Sdrf_Convert_Openms_V0_1_0 = CommandToolBuilder(tool="parse_sdrf_convert_openms", base_command=["parse_sdrf", "convert-openms"], inputs=[ToolInput(tag="in_sd_rf", input_type=File(optional=True), prefix="--sdrf", doc=InputDocumentation(doc="SDRF file")), ToolInput(tag="in_raw", input_type=String(optional=True), prefix="--raw", doc=InputDocumentation(doc="Keep filenames in experimental design output\nas raw.")), ToolInput(tag="in_legacy", input_type=Boolean(optional=True), prefix="--legacy", doc=InputDocumentation(doc="legacy=Create artificial sample column not\nneeded in OpenMS 2.6.")), ToolInput(tag="in_two_tables", input_type=Boolean(optional=True), prefix="--twotables", doc=InputDocumentation(doc="Create one-table or two-tables format.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Output debug information.")), ToolInput(tag="in_conditions_from_columns", input_type=String(optional=True), prefix="--conditionsfromcolumns", doc=InputDocumentation(doc="Create conditions from provided (e.g.,\nfactor) columns."))], outputs=[], container="quay.io/biocontainers/sdrf-pipelines:0.0.14--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Sdrf_Convert_Openms_V0_1_0().translate("wdl")

