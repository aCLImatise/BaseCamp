from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fasta_Merge_V0_1_0 = CommandToolBuilder(tool="fasta_merge", base_command=["fasta_merge"], inputs=[ToolInput(tag="in_location_index_log", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="location of the MAKER datastore index log.")), ToolInput(tag="in_base_name_output", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="base name for the output files.")), ToolInput(tag="in_optional_list_process", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="optional list of files to process along with or instead of the\ndatastore.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

