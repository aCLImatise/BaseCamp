from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Crisprtools_Stat_V0_1_0 = CommandToolBuilder(tool="crisprtools_stat", base_command=["crisprtools", "stat"], inputs=[ToolInput(tag="in_print_aggregate_summary", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="print out aggregate summary, can be combined with -t -p")), ToolInput(tag="in_print_column_headers", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="print out column headers in tabular output")), ToolInput(tag="in_comma_separated_list", input_type=String(), prefix="-g", doc=InputDocumentation(doc="a comma separated list of group IDs that you would like to see stats for.")), ToolInput(tag="in_pretty_print", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="pretty print")), ToolInput(tag="in_separator_string_tabular", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="separator string for tabular output [default: '     ']")), ToolInput(tag="in_tabular_output", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="tabular output")), ToolInput(tag="in_coverage", input_type=Boolean(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Create a detailed report on the spacer coverage for each group"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crisprtools_Stat_V0_1_0().translate("wdl", allow_empty_container=True)

