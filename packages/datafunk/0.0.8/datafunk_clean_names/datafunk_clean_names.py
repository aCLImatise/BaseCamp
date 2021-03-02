from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Datafunk_Clean_Names_V0_1_0 = CommandToolBuilder(tool="datafunk_clean_names", base_command=["datafunk", "clean_names"], inputs=[ToolInput(tag="in_input_metadata", input_type=File(optional=True), prefix="--input-metadata", doc=InputDocumentation(doc="Input file: metadata (csv) for location curation")), ToolInput(tag="in_trait", input_type=String(optional=True), prefix="--trait", doc=InputDocumentation(doc="Column name containing the locations")), ToolInput(tag="in_output_metadata", input_type=File(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="Output file name for resulting filtered metadata")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)"))], outputs=[ToolOutput(tag="out_output_metadata", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_metadata", type_hint=File()), doc=OutputDocumentation(doc="Output file name for resulting filtered metadata"))], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Clean_Names_V0_1_0().translate("wdl")

