from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Phyluce_Probe_Query_Multi_Merge_Table_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_query_multi_merge_table", base_command=["phyluce_probe_query_multi_merge_table"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="The database to query")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="When using --specific-counts, output a BED file of\nthose loci")), ToolInput(tag="in_base_tax_on", input_type=String(optional=True), prefix="--base-taxon", doc=InputDocumentation(doc="The base taxon to use.")), ToolInput(tag="in_specific_counts", input_type=Int(optional=True), prefix="--specific-counts", doc=InputDocumentation(doc="Return data for a specific minimum number of taxa.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="When using --specific-counts, output a BED file of\nthose loci"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Query_Multi_Merge_Table_V0_1_0().translate("wdl", allow_empty_container=True)

