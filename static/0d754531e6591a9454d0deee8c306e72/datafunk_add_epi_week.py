from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Datafunk_Add_Epi_Week_V0_1_0 = CommandToolBuilder(tool="datafunk_add_epi_week", base_command=["datafunk", "add_epi_week"], inputs=[ToolInput(tag="in_input_metadata", input_type=String(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Input CSV or TSV")), ToolInput(tag="in_output_metadata", input_type=String(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="Input CSV or TSV")), ToolInput(tag="in_column_name_convert", input_type=String(optional=True), prefix="--date-column", doc=InputDocumentation(doc="Column name to convert to epi week")), ToolInput(tag="in_epi_week_column_name", input_type=String(optional=True), prefix="--epi-week-column-name", doc=InputDocumentation(doc="Column name for epi week column")), ToolInput(tag="in_epi_day_column_name", input_type=String(optional=True), prefix="--epi-day-column-name", doc=InputDocumentation(doc="Column name for epi day column\n")), ToolInput(tag="in_epi_column_name", input_type=String(optional=True), prefix="--epi-column-name", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(optional=True), prefix="--date_column", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Add_Epi_Week_V0_1_0().translate("wdl")

