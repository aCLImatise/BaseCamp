from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Float

Sdreport_V0_1_0 = CommandToolBuilder(tool="sdreport", base_command=["sdreport"], inputs=[ToolInput(tag="in_list_format_output", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="(list format) output all data fields for each record as processed")), ToolInput(tag="in_tab_format_tabulate", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="(tab format) tabulate selected fields for each record as processed")), ToolInput(tag="in_format_comma_delimited", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="(csv format) comma delimited output of selected fields for each record as processed")), ToolInput(tag="in_summary_format_output", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="(summary format) output summary statistics for each unique value of ligand ID")), ToolInput(tag="in_sup", input_type=Boolean(optional=True), prefix="-sup", doc=InputDocumentation(doc="(supplier format) tabulate supplier details (from Catalyst)")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="<IDField> data field to use as ligand ID")), ToolInput(tag="in_nh", input_type=String(optional=True), prefix="-nh", doc=InputDocumentation(doc="'t output column headings in -t and -c formats")), ToolInput(tag="in_old_score_field", input_type=Float(optional=True), prefix="-o", doc=InputDocumentation(doc="old (v3.00) score field names as default columns in -t and -c formats, else use v4.00 field names")), ToolInput(tag="in_norm", input_type=String(optional=True), prefix="-norm", doc=InputDocumentation(doc="normalised score field names as default columns in -t and -c formats (normalised = score / #ligand heavy atoms)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdreport_V0_1_0().translate("wdl", allow_empty_container=True)

