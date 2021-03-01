from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Albatradis_Gene_Reports_V0_1_0 = CommandToolBuilder(tool="albatradis_gene_reports", base_command=["albatradis-gene_reports"], inputs=[ToolInput(tag="in_prefix", input_type=Directory(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output directory prefix (default: output)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information about the analysis while it\nruns (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_gene_reports", input_type=String(), position=0, doc=InputDocumentation(doc="Gene report spreadsheets"))], outputs=[ToolOutput(tag="out_prefix", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output directory prefix (default: output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Albatradis_Gene_Reports_V0_1_0().translate("wdl", allow_empty_container=True)

