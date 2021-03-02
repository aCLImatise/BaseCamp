from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Prophyle_Otu_Table_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_otu_table.py", base_command=["prophyle_otu_table.py"], inputs=[ToolInput(tag="in_comma_separated_list", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="comma separated list of ranks to build the OTU table for\n[species,genus,family,phylum,class,order,kingdom]")), ToolInput(tag="in_position_taxid_input", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="position of the taxid in the input lines [3 (for sam and\nkraken format)]")), ToolInput(tag="in_position_read_i", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="position of the read id in the input lines [1 (for sam, use\n2 for kraken)]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="log file [stderr]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Otu_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)

