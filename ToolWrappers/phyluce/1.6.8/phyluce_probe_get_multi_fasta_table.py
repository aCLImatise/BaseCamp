from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Phyluce_Probe_Get_Multi_Fasta_Table_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_multi_fasta_table", base_command=["phyluce_probe_get_multi_fasta_table"], inputs=[ToolInput(tag="in_fast_as", input_type=Directory(optional=True), prefix="--fastas", doc=InputDocumentation(doc="A folder of fasta files.")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="A SQLite database to create during integration.")), ToolInput(tag="in_base_tax_on", input_type=String(optional=True), prefix="--base-taxon", doc=InputDocumentation(doc="The base taxon to use.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Multi_Fasta_Table_V0_1_0().translate("wdl", allow_empty_container=True)

