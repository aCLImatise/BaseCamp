from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pysradb_Metadata_V0_1_0 = CommandToolBuilder(tool="pysradb_metadata", base_command=["pysradb", "metadata"], inputs=[ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Save metadata dataframe to file")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Path to SRAmetadb.sqlite file")), ToolInput(tag="in_assay", input_type=Boolean(optional=True), prefix="--assay", doc=InputDocumentation(doc="Include assay type in output")), ToolInput(tag="in_desc", input_type=Boolean(optional=True), prefix="--desc", doc=InputDocumentation(doc="Should sample_attribute be included")), ToolInput(tag="in_detailed", input_type=Boolean(optional=True), prefix="--detailed", doc=InputDocumentation(doc="Display detailed metadata table")), ToolInput(tag="in_expand", input_type=Boolean(optional=True), prefix="--expand", doc=InputDocumentation(doc="Should sample_attribute be expanded")), ToolInput(tag="in_srp_id", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pysradb_Metadata_V0_1_0().translate("wdl", allow_empty_container=True)

