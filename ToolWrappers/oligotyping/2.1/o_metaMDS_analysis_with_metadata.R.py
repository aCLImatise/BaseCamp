from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

O_Metamds_Analysis_With_Metadata_R_V0_1_0 = CommandToolBuilder(tool="o_metaMDS_analysis_with_metadata.R", base_command=["o-metaMDS-analysis-with-metadata.R"], inputs=[ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="--output_file_prefix", doc=InputDocumentation(doc="Output file prefix [default 'unknown']")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="Distance metric [default 'horn']")), ToolInput(tag="in_mapping_variable", input_type=String(optional=True), prefix="--mapping_variable", doc=InputDocumentation(doc="Column in the metadata for sample mapping")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Title for the output figure [default '(unknown title)']")), ToolInput(tag="in_script_do_tr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_matrix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_metadata", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output file prefix [default 'unknown']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Metamds_Analysis_With_Metadata_R_V0_1_0().translate("wdl", allow_empty_container=True)

