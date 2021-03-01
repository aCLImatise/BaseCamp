from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Taxmapper_Count_V0_1_0 = CommandToolBuilder(tool="taxmapper_count", base_command=["taxmapper", "count"], inputs=[ToolInput(tag="in_tax", input_type=File(optional=True), prefix="--tax", doc=InputDocumentation(doc="Filtered taxonomy mapping file.")), ToolInput(tag="in_out_one", input_type=File(optional=True), prefix="--out1", doc=InputDocumentation(doc="Output file 1, counted taxa for first taxonomic\nhierarchy [default: taxa_counts_level1.tsv]")), ToolInput(tag="in_out_two", input_type=File(optional=True), prefix="--out2", doc=InputDocumentation(doc="Output file 2, counted taxa for second taxonomic\nhierarchy [default: taxa_counts_level2.tsv]\n"))], outputs=[ToolOutput(tag="out_out_one", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_one", type_hint=File()), doc=OutputDocumentation(doc="Output file 1, counted taxa for first taxonomic\nhierarchy [default: taxa_counts_level1.tsv]")), ToolOutput(tag="out_out_two", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_two", type_hint=File()), doc=OutputDocumentation(doc="Output file 2, counted taxa for second taxonomic\nhierarchy [default: taxa_counts_level2.tsv]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxmapper_Count_V0_1_0().translate("wdl", allow_empty_container=True)

