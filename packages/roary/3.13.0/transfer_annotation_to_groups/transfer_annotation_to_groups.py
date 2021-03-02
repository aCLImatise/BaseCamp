from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Transfer_Annotation_To_Groups_V0_1_0 = CommandToolBuilder(tool="transfer_annotation_to_groups", base_command=["transfer_annotation_to_groups"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename [reannotated_groups]")), ToolInput(tag="in_clusters_filename", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="clusters filename [clustered_proteins]")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output filename [reannotated_groups]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transfer_Annotation_To_Groups_V0_1_0().translate("wdl", allow_empty_container=True)

