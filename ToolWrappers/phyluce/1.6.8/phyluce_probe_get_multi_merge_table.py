from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Probe_Get_Multi_Merge_Table_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_multi_merge_table", base_command=["phyluce_probe_get_multi_merge_table"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="A config file mapping names to BED files.")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="A SQLite database to create during integration.")), ToolInput(tag="in_base_tax_on", input_type=String(optional=True), prefix="--base-taxon", doc=InputDocumentation(doc="The base taxon to use.")), ToolInput(tag="in_filter", input_type=File(optional=True), prefix="--filter", doc=InputDocumentation(doc="A file-type filter to apply to the BED directory of\nfiles\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Multi_Merge_Table_V0_1_0().translate("wdl", allow_empty_container=True)

