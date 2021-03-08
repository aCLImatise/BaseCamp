from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Biopython_Convert_V0_1_0 = CommandToolBuilder(tool="biopython.convert", base_command=["biopython.convert"], inputs=[ToolInput(tag="in_records_seperate_files", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="records into seperate files")), ToolInput(tag="in_select_records_return", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="to select records. Must return list of SeqIO records. Root is list of input SeqIO records.")), ToolInput(tag="in_details_records_conversion", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="out details of records during conversion")), ToolInput(tag="in_version_and_exit", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="version and exit"))], outputs=[], container="quay.io/biocontainers/biopython.convert:1.2.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopython_Convert_V0_1_0().translate("wdl")

